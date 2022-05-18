.class public Lcn/nubia/touping/HelpActivity;
.super Lcn/nubia/touping/BaseActivity;
.source "HelpActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/nubia/touping/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x7f0e00a1

    .line 12
    invoke-super {p0, p1}, Lcn/nubia/touping/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcn/nubia/touping/HelpActivity;->setContentView(I)V

    .line 14
    const v0, 0x7f0e009f

    invoke-virtual {p0, v0}, Lcn/nubia/touping/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/touping/HelpActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/touping/HelpActivity$1;-><init>(Lcn/nubia/touping/HelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    const v0, 0x7f0e00a0

    invoke-virtual {p0, v0}, Lcn/nubia/touping/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/touping/HelpActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/touping/HelpActivity$2;-><init>(Lcn/nubia/touping/HelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {p0, v2}, Lcn/nubia/touping/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/touping/HelpActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/touping/HelpActivity$3;-><init>(Lcn/nubia/touping/HelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v0, 0x7f0e00a2

    invoke-virtual {p0, v0}, Lcn/nubia/touping/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/touping/HelpActivity$4;

    invoke-direct {v1, p0}, Lcn/nubia/touping/HelpActivity$4;-><init>(Lcn/nubia/touping/HelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v0, 0x7f0e00a3

    invoke-virtual {p0, v0}, Lcn/nubia/touping/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/touping/HelpActivity$5;

    invoke-direct {v1, p0}, Lcn/nubia/touping/HelpActivity$5;-><init>(Lcn/nubia/touping/HelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->isSupportWiredScreenProjection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0, v2}, Lcn/nubia/touping/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :cond_0
    return-void
.end method
