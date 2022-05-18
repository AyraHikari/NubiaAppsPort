.class Lu/aly/m$9;
.super Lu/aly/f;
.source "UMCCAggregatedManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/m;->a(Lu/aly/l;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/m;


# direct methods
.method constructor <init>(Lu/aly/m;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lu/aly/m$9;->a:Lu/aly/m;

    invoke-direct {p0}, Lu/aly/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 258
    instance-of v0, p1, Lu/aly/h;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lu/aly/m$9;->a:Lu/aly/m;

    check-cast p1, Lu/aly/h;

    invoke-static {v0, p1}, Lu/aly/m;->a(Lu/aly/m;Lu/aly/h;)Lu/aly/h;

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lu/aly/m$9;->a:Lu/aly/m;

    invoke-static {v0}, Lu/aly/m;->i(Lu/aly/m;)V

    goto :goto_0
.end method
