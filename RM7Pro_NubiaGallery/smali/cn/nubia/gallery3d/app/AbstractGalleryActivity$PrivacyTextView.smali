.class public Lcn/nubia/gallery3d/app/AbstractGalleryActivity$PrivacyTextView;
.super Landroid/text/style/ClickableSpan;
.source "AbstractGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrivacyTextView"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;Landroid/content/Context;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$PrivacyTextView;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 320
    iput-object p2, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$PrivacyTextView;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 332
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$PrivacyTextView;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    const-class v1, Lcn/nubia/privacy/PrivacyActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$PrivacyTextView;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 334
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$PrivacyTextView;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    const v0, 0x7f010018

    const v1, 0x7f010019

    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 325
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 326
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AbstractGalleryActivity$PrivacyTextView;->this$0:Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f06004e

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x1

    .line 327
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
