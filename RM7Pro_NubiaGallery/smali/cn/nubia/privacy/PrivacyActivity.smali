.class public Lcn/nubia/privacy/PrivacyActivity;
.super Lcn/nubia/gallery3d/app/AbstractGalleryActivity;
.source "PrivacyActivity.java"


# instance fields
.field private mActionBarBackImageView:Landroid/widget/ImageView;

.field private privacy:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 35
    invoke-super {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    .line 36
    invoke-virtual {p0}, Lcn/nubia/privacy/PrivacyActivity;->finish()V

    const v0, 0x7f010016

    const v1, 0x7f010017

    .line 37
    invoke-virtual {p0, v0, v1}, Lcn/nubia/privacy/PrivacyActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 19
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    .line 20
    invoke-virtual {p0, p1}, Lcn/nubia/privacy/PrivacyActivity;->setContentView(I)V

    const p1, 0x7f090032

    .line 21
    invoke-virtual {p0, p1}, Lcn/nubia/privacy/PrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/privacy/PrivacyActivity;->mActionBarBackImageView:Landroid/widget/ImageView;

    const p1, 0x7f090129

    .line 22
    invoke-virtual {p0, p1}, Lcn/nubia/privacy/PrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/privacy/PrivacyActivity;->privacy:Landroid/widget/TextView;

    .line 23
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 24
    iget-object p1, p0, Lcn/nubia/privacy/PrivacyActivity;->mActionBarBackImageView:Landroid/widget/ImageView;

    new-instance v0, Lcn/nubia/privacy/PrivacyActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/privacy/PrivacyActivity$1;-><init>(Lcn/nubia/privacy/PrivacyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 42
    invoke-super {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    .line 43
    invoke-virtual {p0}, Lcn/nubia/privacy/PrivacyActivity;->finish()V

    return-void
.end method
