.class Lcn/nubia/camera/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a/b;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcn/nubia/camera/a/b$1;->a:Lcn/nubia/camera/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcn/nubia/camera/a/b$1;->a:Lcn/nubia/camera/a/b;

    invoke-static {p1}, Lcn/nubia/camera/a/b;->a(Lcn/nubia/camera/a/b;)V

    .line 85
    iget-object p1, p0, Lcn/nubia/camera/a/b$1;->a:Lcn/nubia/camera/a/b;

    invoke-virtual {p1}, Lcn/nubia/camera/a/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_0
    return-void
.end method
