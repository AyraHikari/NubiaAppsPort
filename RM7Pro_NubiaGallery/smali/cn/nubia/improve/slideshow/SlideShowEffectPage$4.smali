.class Lcn/nubia/improve/slideshow/SlideShowEffectPage$4;
.super Ljava/lang/Object;
.source "SlideShowEffectPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/slideshow/SlideShowEffectPage;->onCreateActionBar(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/slideshow/SlideShowEffectPage;


# direct methods
.method constructor <init>(Lcn/nubia/improve/slideshow/SlideShowEffectPage;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage$4;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 220
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage$4;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectPage;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->access$500(Lcn/nubia/improve/slideshow/SlideShowEffectPage;ILandroid/content/Intent;)V

    .line 221
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage$4;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectPage;

    invoke-static {p1}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->access$600(Lcn/nubia/improve/slideshow/SlideShowEffectPage;)V

    return-void
.end method
