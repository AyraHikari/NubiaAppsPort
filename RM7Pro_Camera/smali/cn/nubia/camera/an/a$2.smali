.class Lcn/nubia/camera/an/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/an/a;->a(Lcn/nubia/camera/an/a$a;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/an/a$a;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcn/nubia/camera/an/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/an/a;Lcn/nubia/camera/an/a$a;IIII)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcn/nubia/camera/an/a$2;->f:Lcn/nubia/camera/an/a;

    iput-object p2, p0, Lcn/nubia/camera/an/a$2;->a:Lcn/nubia/camera/an/a$a;

    iput p3, p0, Lcn/nubia/camera/an/a$2;->b:I

    iput p4, p0, Lcn/nubia/camera/an/a$2;->c:I

    iput p5, p0, Lcn/nubia/camera/an/a$2;->d:I

    iput p6, p0, Lcn/nubia/camera/an/a$2;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 354
    iget-object v0, p0, Lcn/nubia/camera/an/a$2;->f:Lcn/nubia/camera/an/a;

    invoke-static {v0}, Lcn/nubia/camera/an/a;->a(Lcn/nubia/camera/an/a;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/an/a$2;->a:Lcn/nubia/camera/an/a$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v1, p0, Lcn/nubia/camera/an/a$2;->a:Lcn/nubia/camera/an/a$a;

    iget-object v2, p0, Lcn/nubia/camera/an/a$2;->f:Lcn/nubia/camera/an/a;

    iget v3, p0, Lcn/nubia/camera/an/a$2;->b:I

    iget v4, p0, Lcn/nubia/camera/an/a$2;->c:I

    iget v5, p0, Lcn/nubia/camera/an/a$2;->d:I

    iget v6, p0, Lcn/nubia/camera/an/a$2;->e:I

    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/an/a$a;->a(Lcn/nubia/camera/an/a;IIII)V

    :cond_0
    return-void
.end method
