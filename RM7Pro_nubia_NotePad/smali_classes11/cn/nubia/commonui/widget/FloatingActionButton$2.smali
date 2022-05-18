.class Lcn/nubia/commonui/widget/FloatingActionButton$2;
.super Landroid/view/ViewOutlineProvider;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/FloatingActionButton;->setShader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/FloatingActionButton;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/FloatingActionButton;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/widget/FloatingActionButton;

    .prologue
    .line 36
    iput-object p1, p0, Lcn/nubia/commonui/widget/FloatingActionButton$2;->this$0:Lcn/nubia/commonui/widget/FloatingActionButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 40
    return-void
.end method
