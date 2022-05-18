.class Lu/aly/m$6$1;
.super Lu/aly/f;
.source "UMCCAggregatedManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/m$6;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/m$6;


# direct methods
.method constructor <init>(Lu/aly/m$6;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lu/aly/m$6$1;->a:Lu/aly/m$6;

    invoke-direct {p0}, Lu/aly/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 2

    .prologue
    .line 160
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 161
    check-cast p1, Ljava/util/Map;

    .line 162
    iget-object v0, p0, Lu/aly/m$6$1;->a:Lu/aly/m$6;

    iget-object v0, v0, Lu/aly/m$6;->b:Lu/aly/m;

    invoke-static {v0}, Lu/aly/m;->e(Lu/aly/m;)Lu/aly/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/aly/h;->a(Ljava/util/Map;)V

    .line 170
    :cond_0
    :goto_0
    iget-object v0, p0, Lu/aly/m$6$1;->a:Lu/aly/m$6;

    iget-object v0, v0, Lu/aly/m$6;->b:Lu/aly/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/m;->a(Lu/aly/m;Z)Z

    .line 171
    return-void

    .line 163
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 166
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    goto :goto_0
.end method
