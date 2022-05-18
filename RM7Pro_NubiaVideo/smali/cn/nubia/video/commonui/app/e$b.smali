.class Lcn/nubia/video/commonui/app/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/commonui/app/e;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/commonui/app/e;


# direct methods
.method constructor <init>(Lcn/nubia/video/commonui/app/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/e$b;->a:Lcn/nubia/video/commonui/app/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e$b;->a:Lcn/nubia/video/commonui/app/e;

    invoke-static {v0}, Lcn/nubia/video/commonui/app/e;->b(Lcn/nubia/video/commonui/app/e;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e$b;->a:Lcn/nubia/video/commonui/app/e;

    invoke-static {v0}, Lcn/nubia/video/commonui/app/e;->a(Lcn/nubia/video/commonui/app/e;)V

    const/4 v0, 0x1

    return v0
.end method
