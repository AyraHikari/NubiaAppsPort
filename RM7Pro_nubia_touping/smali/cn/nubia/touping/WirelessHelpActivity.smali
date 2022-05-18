.class public Lcn/nubia/touping/WirelessHelpActivity;
.super Lcn/nubia/touping/BaseActivity;
.source "WirelessHelpActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcn/nubia/touping/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcn/nubia/touping/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcn/nubia/touping/WirelessHelpActivity;->setContentView(I)V

    .line 12
    const v0, 0x7f0e009f

    invoke-virtual {p0, v0}, Lcn/nubia/touping/WirelessHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/touping/WirelessHelpActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/touping/WirelessHelpActivity$1;-><init>(Lcn/nubia/touping/WirelessHelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    return-void
.end method
