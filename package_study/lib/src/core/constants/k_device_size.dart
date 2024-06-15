///576
const double knMobileMaxScreenSize = 576;

///992
const double knTabMaxScreenSize = 992;
bool fnCheckIphone(double width) {
  return (width < 650);
}

bool fnCheckIPad(double width) {
  return (width < 1200);
}