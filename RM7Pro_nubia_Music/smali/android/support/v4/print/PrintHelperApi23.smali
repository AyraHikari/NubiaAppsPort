.class Landroid/support/v4/print/PrintHelperApi23;
.super Landroid/support/v4/print/PrintHelperApi20;
.source "PrintHelperApi23.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/support/v4/print/PrintHelperApi20;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelperApi23;->mIsMinMarginsHandlingCorrect:Z

    .line 43
    return-void
.end method


# virtual methods
.method protected copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
    .locals 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/print/PrintHelperApi20;->copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setDuplexMode(I)Landroid/print/PrintAttributes$Builder;

    .line 36
    :cond_0
    return-object v0
.end method
