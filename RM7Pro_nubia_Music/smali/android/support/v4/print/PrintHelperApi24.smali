.class Landroid/support/v4/print/PrintHelperApi24;
.super Landroid/support/v4/print/PrintHelperApi23;
.source "PrintHelperApi24.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, p1}, Landroid/support/v4/print/PrintHelperApi23;-><init>(Landroid/content/Context;)V

    .line 30
    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelperApi24;->mIsMinMarginsHandlingCorrect:Z

    .line 31
    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelperApi24;->mPrintActivityRespectsOrientation:Z

    .line 32
    return-void
.end method
