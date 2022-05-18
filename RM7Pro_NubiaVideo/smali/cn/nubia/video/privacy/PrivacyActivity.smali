.class public Lcn/nubia/video/privacy/PrivacyActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    sget v0, Lb/a/b/a/a;->a:I

    sget v1, Lb/a/b/a/a;->b:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lb/a/b/a/f;->a:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    sget p1, Lb/a/b/a/e;->a:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/video/privacy/PrivacyActivity;->a:Landroid/widget/ImageView;

    .line 4
    sget p1, Lb/a/b/a/e;->B:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/video/privacy/PrivacyActivity;->b:Landroid/widget/TextView;

    .line 5
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/privacy/PrivacyActivity;->a:Landroid/widget/ImageView;

    new-instance v0, Lcn/nubia/video/privacy/PrivacyActivity$a;

    invoke-direct {v0, p0}, Lcn/nubia/video/privacy/PrivacyActivity$a;-><init>(Lcn/nubia/video/privacy/PrivacyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
