function izracun_stevila_pi_brez_poimenovanja_osi()
    nakljucneTocke = 10000;
    radij = 1;
    [ocenjenPi, napaka] = area_pi(nakljucneTocke, radij);
    disp(['Ocenjeno π: ', num2str(ocenjenPi)]);
    disp(['Napaka: ', num2str(napaka)]);
    kroznica_in_tocke(nakljucneTocke, radij);
end

function [ocenjenPi, napaka] = area_pi(nakljucneTocke, radij)
    Krog_znotraj = 0;
    for i = 1:nakljucneTocke
        x = 2 * rand() - 1;
        y = 2 * rand() - 1;
        if x^2 + y^2 <= radij^2
            Krog_znotraj = Krog_znotraj + 1;
        end
    end
    ocenjenPi = 4 * Krog_znotraj / nakljucneTocke;
    napaka = abs(ocenjenPi - pi);
end

function kroznica_in_tocke(nakljucneTocke, radij)
    x = 2 * rand(nakljucneTocke, 1) - 1;
    y = 2 * rand(nakljucneTocke, 1) - 1;
    razdalja = sqrt(x.^2 + y.^2);
    tocke_Znotraj = razdalja <= radij;
    tocke_Zunaj = razdalja > radij;
    scatter(x(tocke_Znotraj), y(tocke_Znotraj), 50, 'b', 'filled');
    hold on;
    scatter(x(tocke_Zunaj), y(tocke_Zunaj), 50, 'magenta', 'pentagram');
    izrisi_kroznico(radij);
    axis equal;
    title('Nakljucno generirane tocke na kroznici z lokom');
    xlabel('X-os');
    ylabel('Y-os');
    legend('Znotraj kroznice','Zunaj kroznice','Kroznica');
end

function izrisi_kroznico(radij)
    theta = linspace(0, 2 * pi, 1000);
    x = radij * cos(theta);
    y = radij * sin(theta);
    plot(x, y, 'y', 'LineWidth', 2);
end
