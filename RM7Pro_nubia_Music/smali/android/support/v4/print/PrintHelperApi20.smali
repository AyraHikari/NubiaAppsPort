.class Landroid/support/v4/print/PrintHelperApi20;
.super Landroid/support/v4/print/PrintHelperKitkat;
.source "PrintHelperApi20.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/support/v4/print/PrintHelperKitkat;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelperApi20;->mPrintActivityRespectsOrientation:Z

    .line 34
    return-void
.end method
