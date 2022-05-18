.class Lcn/nubia/camera/g/g$1;
.super Lcn/nubia/camera/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/g/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/g/g;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/nubia/camera/g/g$1;->a:Lcn/nubia/camera/g/g;

    invoke-direct {p0}, Lcn/nubia/camera/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcn/nubia/camera/g/g$1;->a:Lcn/nubia/camera/g/g;

    invoke-static {v0}, Lcn/nubia/camera/g/g;->a(Lcn/nubia/camera/g/g;)Lcn/nubia/camera/aw/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcn/nubia/camera/g/g$1;->a:Lcn/nubia/camera/g/g;

    invoke-static {v0}, Lcn/nubia/camera/g/g;->a(Lcn/nubia/camera/g/g;)Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->k()V

    :cond_0
    return-void
.end method
