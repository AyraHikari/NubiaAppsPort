.class Lcn/nubia/camera/pretty/b/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/pretty/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/b/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/b/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/b/c;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcn/nubia/camera/pretty/b/c$3;->a:Lcn/nubia/camera/pretty/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "SingleBokehShutterButtonClickListener"

    const-string v1, "FacePlus init done"

    .line 122
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c$3;->a:Lcn/nubia/camera/pretty/b/c;

    invoke-static {v0}, Lcn/nubia/camera/pretty/b/c;->e(Lcn/nubia/camera/pretty/b/c;)Lcn/nubia/camera/pretty/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c$3;->a:Lcn/nubia/camera/pretty/b/c;

    invoke-static {v0}, Lcn/nubia/camera/pretty/b/c;->e(Lcn/nubia/camera/pretty/b/c;)Lcn/nubia/camera/pretty/b/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/pretty/b/b;->a(Z)V

    :cond_0
    return-void
.end method
