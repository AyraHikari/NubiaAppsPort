.class Lcn/nubia/video/privacy/PrivacyActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/privacy/PrivacyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/privacy/PrivacyActivity;


# direct methods
.method constructor <init>(Lcn/nubia/video/privacy/PrivacyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/privacy/PrivacyActivity$a;->a:Lcn/nubia/video/privacy/PrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/nubia/video/privacy/PrivacyActivity$a;->a:Lcn/nubia/video/privacy/PrivacyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/privacy/PrivacyActivity$a;->a:Lcn/nubia/video/privacy/PrivacyActivity;

    sget v0, Lb/a/b/a/a;->a:I

    sget v1, Lb/a/b/a/a;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
