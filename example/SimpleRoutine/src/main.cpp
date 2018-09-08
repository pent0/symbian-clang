#include <e32def.h>
#include <e32cmn.h>
#include <e32base.h>
#include <e32debug.h>

void DoStuffL() {
    // Empty yet
}

void ActualMain() {
    CActiveScheduler *scheduler = new (ELeave) CActiveScheduler();
    CleanupStack::PushL(scheduler);
    CActiveScheduler::Install(scheduler);

    DoStuffL();

    CleanupStack::Pop(scheduler);
}

TInt E32Main() {
    CTrapCleanup *cleanup = CTrapCleanup::New();
    TRAPD(err, ActualMain());

    return err;
}