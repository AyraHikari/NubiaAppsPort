.class Lcn/nubia/camera/zoom/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/zoom/arc/a$a;


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

    .line 193
    iput-object p1, p0, Lcn/nubia/camera/zoom/c$2;->a:Lcn/nubia/camera/zoom/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 196
    iget-object v0, p0, Lcn/nubia/camera/zoom/c$2;->a:Lcn/nubia/camera/zoom/c;

    invoke-static {v0}, Lcn/nubia/camera/zoom/c;->b(Lcn/nubia/camera/zoom/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v1

    const/16 v2, 0x8

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const-string v7, "zoomUI"

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/ae/a;->a(IJJLjava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 8

    .line 201
    iget-object v0, p0, Lcn/nubia/camera/zoom/c$2;->a:Lcn/nubia/camera/zoom/c;

    invoke-static {v0}, Lcn/nubia/camera/zoom/c;->b(Lcn/nubia/camera/zoom/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x96

    const-wide/16 v5, 0x32

    const-string v7, "zoomUI"

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/ae/a;->a(IJJLjava/lang/String;)V

    return-void
.end method
