.class public Lcn/nubia/touping/USBpcControlPhoneActivity;
.super Lcn/nubia/touping/BaseActivity;
.source "USBpcControlPhoneActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/nubia/touping/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcn/nubia/touping/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcn/nubia/touping/USBpcControlPhoneActivity;->setContentView(I)V

    .line 15
    const v0, 0x7f0e009f

    invoke-virtual {p0, v0}, Lcn/nubia/touping/USBpcControlPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/touping/USBpcControlPhoneActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/touping/USBpcControlPhoneActivity$1;-><init>(Lcn/nubia/touping/USBpcControlPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    return-void
.end method
