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
        mHdltvoutHandle << " , " <<  " \"a_address0\" :  \"" << a_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"a_ce0\" :  \"" << a_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"a_q0\" :  \"" << a_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"a_address1\" :  \"" << a_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"a_ce1\" :  \"" << a_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"a_q1\" :  \"" << a_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b_address0\" :  \"" << b_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b_ce0\" :  \"" << b_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b_q0\" :  \"" << b_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b_address1\" :  \"" << b_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b_ce1\" :  \"" << b_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b_q1\" :  \"" << b_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"res_address0\" :  \"" << res_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"res_ce0\" :  \"" << res_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"res_we0\" :  \"" << res_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"res_d0\" :  \"" << res_d0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"res_address1\" :  \"" << res_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"res_ce1\" :  \"" << res_ce1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"res_we1\" :  \"" << res_we1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"res_d1\" :  \"" << res_d1.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

