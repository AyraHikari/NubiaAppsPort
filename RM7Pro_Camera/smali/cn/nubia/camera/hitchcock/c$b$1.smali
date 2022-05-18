.class Lcn/nubia/camera/hitchcock/c$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/hitchcock/c$b;->a(Landroid/graphics/Rect;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/hitchcock/c$b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/hitchcock/c$b;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/c$b$1;->a:Lcn/nubia/camera/hitchcock/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 569
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b$1;->a:Lcn/nubia/camera/hitchcock/c$b;

    iget-object v0, v0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$b$1;->a:Lcn/nubia/camera/hitchcock/c$b;

    iget-object v1, v1, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->g(Lcn/nubia/camera/hitchcock/c;)F

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/hitchcock/c;->b(Lcn/nubia/camera/hitchcock/c;F)V

    return-void
.end method
