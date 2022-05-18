.class Lcn/nubia/camera/an/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/an/a;->a(Lcn/nubia/camera/an/a$a;IIIIIIII)V
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

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:I

.field final synthetic j:Lcn/nubia/camera/an/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/an/a;Lcn/nubia/camera/an/a$a;IIIIIIII)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcn/nubia/camera/an/a$1;->j:Lcn/nubia/camera/an/a;

    iput-object p2, p0, Lcn/nubia/camera/an/a$1;->a:Lcn/nubia/camera/an/a$a;

    iput p3, p0, Lcn/nubia/camera/an/a$1;->b:I

    iput p4, p0, Lcn/nubia/camera/an/a$1;->c:I

    iput p5, p0, Lcn/nubia/camera/an/a$1;->d:I

    iput p6, p0, Lcn/nubia/camera/an/a$1;->e:I

    iput p7, p0, Lcn/nubia/camera/an/a$1;->f:I

    iput p8, p0, Lcn/nubia/camera/an/a$1;->g:I

    iput p9, p0, Lcn/nubia/camera/an/a$1;->h:I

    iput p10, p0, Lcn/nubia/camera/an/a$1;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 330
    iget-object v0, p0, Lcn/nubia/camera/an/a$1;->j:Lcn/nubia/camera/an/a;

    invoke-static {v0}, Lcn/nubia/camera/an/a;->a(Lcn/nubia/camera/an/a;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/an/a$1;->a:Lcn/nubia/camera/an/a$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v1, p0, Lcn/nubia/camera/an/a$1;->a:Lcn/nubia/camera/an/a$a;

    iget-object v2, p0, Lcn/nubia/camera/an/a$1;->j:Lcn/nubia/camera/an/a;

    iget v3, p0, Lcn/nubia/camera/an/a$1;->b:I

    iget v4, p0, Lcn/nubia/camera/an/a$1;->c:I

    iget v5, p0, Lcn/nubia/camera/an/a$1;->d:I

    iget v6, p0, Lcn/nubia/camera/an/a$1;->e:I

    iget v7, p0, Lcn/nubia/camera/an/a$1;->f:I

    iget v8, p0, Lcn/nubia/camera/an/a$1;->g:I

    iget v9, p0, Lcn/nubia/camera/an/a$1;->h:I

    iget v10, p0, Lcn/nubia/camera/an/a$1;->i:I

    invoke-interface/range {v1 .. v10}, Lcn/nubia/camera/an/a$a;->a(Lcn/nubia/camera/an/a;IIIIIIII)V

    :cond_0
    return-void
.end method
