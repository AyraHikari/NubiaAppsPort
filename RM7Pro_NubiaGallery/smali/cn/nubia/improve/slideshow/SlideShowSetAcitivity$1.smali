.class Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$1;
.super Ljava/lang/Object;
.source "SlideShowSetAcitivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;


# direct methods
.method constructor <init>(Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$1;->this$0:Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 88
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$1;->this$0:Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;

    invoke-static {v0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->access$000(Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcn/nubia/improve/slideshow/SlideShowEffectActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$1;->this$0:Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
