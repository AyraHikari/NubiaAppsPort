.class Lcn/nubia/camera/zoom/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/zoom/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/zoom/c;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/zoom/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/zoom/c;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcn/nubia/camera/zoom/c$3;->a:Lcn/nubia/camera/zoom/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcn/nubia/camera/zoom/c$3;->a:Lcn/nubia/camera/zoom/c;

    invoke-static {v0, p1}, Lcn/nubia/camera/zoom/c;->a(Lcn/nubia/camera/zoom/c;F)F

    .line 209
    iget-object v0, p0, Lcn/nubia/camera/zoom/c$3;->a:Lcn/nubia/camera/zoom/c;

    invoke-static {v0}, Lcn/nubia/camera/zoom/c;->d(Lcn/nubia/camera/zoom/c;)Lcn/nubia/camera/zoom/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/zoom/c$3;->a:Lcn/nubia/camera/zoom/c;

    invoke-static {v1}, Lcn/nubia/camera/zoom/c;->c(Lcn/nubia/camera/zoom/c;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/a;->a(F)V

    .line 210
    iget-object v0, p0, Lcn/nubia/camera/zoom/c$3;->a:Lcn/nubia/camera/zoom/c;

    invoke-static {v0, p1}, Lcn/nubia/camera/zoom/c;->b(Lcn/nubia/camera/zoom/c;F)V

    return-void
.end method
