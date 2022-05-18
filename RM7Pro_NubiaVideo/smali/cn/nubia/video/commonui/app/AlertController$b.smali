.class Lcn/nubia/video/commonui/app/AlertController$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/commonui/app/AlertController;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcn/nubia/video/commonui/app/AlertController;


# direct methods
.method constructor <init>(Lcn/nubia/video/commonui/app/AlertController;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/AlertController$b;->b:Lcn/nubia/video/commonui/app/AlertController;

    iput-object p2, p0, Lcn/nubia/video/commonui/app/AlertController$b;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/WindowInsets;->isRound()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController$b;->b:Lcn/nubia/video/commonui/app/AlertController;

    invoke-static {p1}, Lcn/nubia/video/commonui/app/AlertController;->q(Lcn/nubia/video/commonui/app/AlertController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lb/a/b/a/c;->j:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcn/nubia/video/commonui/app/AlertController$b;->a:Landroid/view/View;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
