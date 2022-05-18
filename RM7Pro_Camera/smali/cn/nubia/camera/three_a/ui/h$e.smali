.class Lcn/nubia/camera/three_a/ui/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/al/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/three_a/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/three_a/ui/h;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/three_a/ui/h;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/h$e;->a:Lcn/nubia/camera/three_a/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/three_a/ui/h;Lcn/nubia/camera/three_a/ui/h$1;)V
    .locals 0

    .line 358
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/h$e;-><init>(Lcn/nubia/camera/three_a/ui/h;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h$e;->a:Lcn/nubia/camera/three_a/ui/h;

    invoke-static {v0}, Lcn/nubia/camera/three_a/ui/h;->b(Lcn/nubia/camera/three_a/ui/h;)Lcn/nubia/camera/three_a/ui/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/c;->c(I)V

    .line 361
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h$e;->a:Lcn/nubia/camera/three_a/ui/h;

    invoke-static {v0}, Lcn/nubia/camera/three_a/ui/h;->c(Lcn/nubia/camera/three_a/ui/h;)Lcn/nubia/camera/three_a/ui/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/b;->c(I)V

    .line 362
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h$e;->a:Lcn/nubia/camera/three_a/ui/h;

    invoke-static {v0}, Lcn/nubia/camera/three_a/ui/h;->d(Lcn/nubia/camera/three_a/ui/h;)Lcn/nubia/camera/three_a/ui/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/e;->c(I)V

    return-void
.end method
