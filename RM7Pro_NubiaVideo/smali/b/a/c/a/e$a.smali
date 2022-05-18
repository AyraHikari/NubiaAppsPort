.class Lb/a/c/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/modules/videoRender/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/c/a/e;->g0(Lcn/nubia/modules/videoRender/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/c/a/e;


# direct methods
.method constructor <init>(Lb/a/c/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/e$a;->a:Lb/a/c/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/modules/videoRender/b$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/e$a;->a:Lb/a/c/a/e;

    invoke-static {v0}, Lb/a/c/a/e;->v(Lb/a/c/a/e;)Lb/a/c/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/c/a/e$a;->a:Lb/a/c/a/e;

    invoke-static {v0}, Lb/a/c/a/e;->v(Lb/a/c/a/e;)Lb/a/c/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/c/a/d;->C(Lcn/nubia/modules/videoRender/b$a;)V

    :cond_0
    return-void
.end method
