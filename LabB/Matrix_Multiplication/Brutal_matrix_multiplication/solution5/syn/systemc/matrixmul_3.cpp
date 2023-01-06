#include "matrixmul.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void matrixmul::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"A_address0\" :  \"" << A_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"A_ce0\" :  \"" << A_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"A_q0\" :  \"" << A_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"A_address1\" :  \"" << A_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"A_ce1\" :  \"" << A_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"A_q1\" :  \"" << A_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_address0\" :  \"" << B_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_ce0\" :  \"" << B_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"B_q0\" :  \"" << B_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_address1\" :  \"" << B_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_ce1\" :  \"" << B_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"B_q1\" :  \"" << B_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"AB_address0\" :  \"" << AB_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"AB_ce0\" :  \"" << AB_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"AB_we0\" :  \"" << AB_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"AB_d0\" :  \"" << AB_d0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"AB_address1\" :  \"" << AB_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"AB_ce1\" :  \"" << AB_ce1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"AB_we1\" :  \"" << AB_we1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"AB_d1\" :  \"" << AB_d1.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

