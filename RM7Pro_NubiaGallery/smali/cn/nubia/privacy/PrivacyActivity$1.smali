.class Lcn/nubia/privacy/PrivacyActivity$1;
.super Ljava/lang/Object;
.source "PrivacyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/privacy/PrivacyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/privacy/PrivacyActivity;


# direct methods
.method constructor <init>(Lcn/nubia/privacy/PrivacyActivity;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcn/nubia/privacy/PrivacyActivity$1;->this$0:Lcn/nubia/privacy/PrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 27
    iget-object p1, p0, Lcn/nubia/privacy/PrivacyActivity$1;->this$0:Lcn/nubia/privacy/PrivacyActivity;

    invoke-virtual {p1}, Lcn/nubia/privacy/PrivacyActivity;->finish()V

    .line 28
    iget-object p1, p0, Lcn/nubia/privacy/PrivacyActivity$1;->this$0:Lcn/nubia/privacy/PrivacyActivity;

    const v0, 0x7f010016

    const v1, 0x7f010017

    invoke-virtual {p1, v0, v1}, Lcn/nubia/privacy/PrivacyActivity;->overridePendingTransition(II)V

    return-void
.end method
