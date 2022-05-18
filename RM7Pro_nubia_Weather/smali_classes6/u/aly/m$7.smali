.class Lu/aly/m$7;
.super Lu/aly/f;
.source "UMCCAggregatedManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/m;->a(Lu/aly/f;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/f;

.field final synthetic b:Lu/aly/m;


# direct methods
.method constructor <init>(Lu/aly/m;Lu/aly/f;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lu/aly/m$7;->b:Lu/aly/m;

    iput-object p2, p0, Lu/aly/m$7;->a:Lu/aly/f;

    invoke-direct {p0}, Lu/aly/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 3

    .prologue
    .line 204
    instance-of v0, p1, Lu/aly/h;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lu/aly/m$7;->b:Lu/aly/m;

    check-cast p1, Lu/aly/h;

    invoke-static {v0, p1}, Lu/aly/m;->a(Lu/aly/m;Lu/aly/h;)Lu/aly/h;

    .line 207
    :cond_0
    iget-object v0, p0, Lu/aly/m$7;->a:Lu/aly/f;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lu/aly/f;->a(Ljava/lang/Object;Z)V

    .line 208
    return-void
.end method
