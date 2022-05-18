.class Lcn/nubia/camera/zoom/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/zoom/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/zoom/c;->l()V
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

    .line 160
    iput-object p1, p0, Lcn/nubia/camera/zoom/c$1;->a:Lcn/nubia/camera/zoom/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/zoom/c$1;->a:Lcn/nubia/camera/zoom/c;

    invoke-static {v0, p1}, Lcn/nubia/camera/zoom/c;->a(Lcn/nubia/camera/zoom/c;F)F

    .line 164
    iget-object v0, p0, Lcn/nubia/camera/zoom/c$1;->a:Lcn/nubia/camera/zoom/c;

    invoke-static {v0}, Lcn/nubia/camera/zoom/c;->a(Lcn/nubia/camera/zoom/c;)Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcn/nubia/camera/zoom/c$1;->a:Lcn/nubia/camera/zoom/c;

    invoke-static {v0}, Lcn/nubia/camera/zoom/c;->a(Lcn/nubia/camera/zoom/c;)Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/zoom/arc/a;->a(F)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/c$1;->a:Lcn/nubia/camera/zoom/c;

    invoke-static {v0, p1}, Lcn/nubia/camera/zoom/c;->b(Lcn/nubia/camera/zoom/c;F)V

    return-void
.end method
