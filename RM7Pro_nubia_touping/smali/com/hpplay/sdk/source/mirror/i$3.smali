.class Lcom/hpplay/sdk/source/mirror/i$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mirror/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mirror/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field b:Z

.field final synthetic c:Lcom/hpplay/sdk/source/mirror/i;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/mirror/i;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 785
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->a:Z

    .line 788
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->b:Z

    return-void
.end method


# virtual methods
.method public blockCodec()V
    .locals 2

    .prologue
    .line 846
    const-string v0, "ScreenCastThread"

    const-string v1, "-------->blockCodec"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 847
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->g(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->g(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/k;->a()V

    .line 850
    :cond_0
    return-void
.end method

.method public callbackBandwidth(I)V
    .locals 8

    .prologue
    const v7, 0x33861

    const v6, 0x33860

    const v5, 0x3385f

    const v4, 0x3385e

    const v3, 0x3385d

    .line 869
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->b(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->i(Lcom/hpplay/sdk/source/mirror/i;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 871
    const-string v0, "ScreenCastThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------> level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 872
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 873
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->b(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onInfo(II)V

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 874
    :cond_1
    const/4 v0, 0x3

    if-gt p1, v0, :cond_2

    .line 875
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->b(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, v3, v5}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onInfo(II)V

    goto :goto_0

    .line 876
    :cond_2
    const/4 v0, 0x4

    if-gt p1, v0, :cond_3

    .line 877
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->b(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, v3, v6}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onInfo(II)V

    goto :goto_0

    .line 879
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->b(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, v3, v7}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onInfo(II)V

    goto :goto_0

    .line 882
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->j(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/e;

    move-result-object v0

    iget v0, v0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/i;->j(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/e;

    const v1, 0x6acfc0

    if-lt v0, v1, :cond_5

    .line 883
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->b(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onInfo(II)V

    goto :goto_0

    .line 884
    :cond_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->j(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/e;

    move-result-object v0

    iget v0, v0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/i;->j(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/e;

    const v1, 0x5b8d80

    if-ne v0, v1, :cond_6

    .line 885
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->b(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, v3, v5}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onInfo(II)V

    goto :goto_0

    .line 886
    :cond_6
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->j(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/e;

    move-result-object v0

    iget v0, v0, Lcom/hpplay/sdk/source/mirror/e;->q:I

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/i;->j(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/e;

    const v1, 0x4c4b40

    if-ne v0, v1, :cond_7

    .line 887
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->b(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, v3, v6}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onInfo(II)V

    goto :goto_0

    .line 889
    :cond_7
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->b(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0, v3, v7}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onInfo(II)V

    goto/16 :goto_0
.end method

.method public onBandwidthReduce(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 792
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->i(Lcom/hpplay/sdk/source/mirror/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->a:Z

    if-nez v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->j(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mirror/e;->a(I)V

    .line 794
    const-string v0, "ScreenCastThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------->onBandwidthReduce "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/i$3;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 795
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->b:Z

    if-nez v0, :cond_2

    .line 796
    const-string v0, "ScreenCastThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isBitrateLimit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/i$3;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 797
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->c(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/b/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->a(Lcom/hpplay/sdk/source/mirror/a/a;)V

    .line 798
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->k(Lcom/hpplay/sdk/source/mirror/i;)I

    move-result v0

    const/16 v1, 0x780

    if-lt v0, v1, :cond_1

    .line 799
    const/16 v0, 0x500

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->c(I)I

    .line 800
    const/16 v0, 0x2d0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->d(I)I

    .line 801
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {}, Lcom/hpplay/sdk/source/mirror/i;->l()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->a(Lcom/hpplay/sdk/source/mirror/i;I)I

    .line 802
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {}, Lcom/hpplay/sdk/source/mirror/i;->m()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->b(Lcom/hpplay/sdk/source/mirror/i;I)I

    .line 803
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->c(Lcom/hpplay/sdk/source/mirror/i;I)I

    .line 809
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/i;->k(Lcom/hpplay/sdk/source/mirror/i;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(Lcom/hpplay/sdk/source/mirror/i;I)I

    .line 810
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/i;->l(Lcom/hpplay/sdk/source/mirror/i;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->e(Lcom/hpplay/sdk/source/mirror/i;I)I

    .line 811
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/i;->k(Lcom/hpplay/sdk/source/mirror/i;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->f(Lcom/hpplay/sdk/source/mirror/i;I)I

    .line 812
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/i;->l(Lcom/hpplay/sdk/source/mirror/i;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->g(Lcom/hpplay/sdk/source/mirror/i;I)I

    .line 813
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/i;->c()V

    .line 818
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mirror/i$3;->callbackBandwidth(I)V

    .line 819
    return-void

    .line 805
    :cond_1
    iput-boolean v4, p0, Lcom/hpplay/sdk/source/mirror/i$3;->b:Z

    .line 806
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/i;->k(Lcom/hpplay/sdk/source/mirror/i;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->a(Lcom/hpplay/sdk/source/mirror/i;I)I

    .line 807
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/i;->l(Lcom/hpplay/sdk/source/mirror/i;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->b(Lcom/hpplay/sdk/source/mirror/i;I)I

    goto :goto_0

    .line 815
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->j(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/mirror/e;->a(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->a:Z

    goto :goto_1
.end method

.method public onBandwidthRise()V
    .locals 4

    .prologue
    const/high16 v3, 0x3fc00000    # 1.5f

    const/4 v2, 0x0

    .line 823
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->i(Lcom/hpplay/sdk/source/mirror/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    const-string v0, "ScreenCastThread"

    const-string v1, "-------->onBandwidthRise"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 825
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->b:Z

    if-eqz v0, :cond_1

    .line 826
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/i$3;->a:Z

    .line 827
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mirror/i$3;->b:Z

    .line 828
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->c(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/b/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mirror/b/d;->a(Lcom/hpplay/sdk/source/mirror/a/a;)V

    .line 829
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/i;->k(Lcom/hpplay/sdk/source/mirror/i;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->a(Lcom/hpplay/sdk/source/mirror/i;I)I

    .line 830
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/i;->l(Lcom/hpplay/sdk/source/mirror/i;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->b(Lcom/hpplay/sdk/source/mirror/i;I)I

    .line 831
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/i;->k(Lcom/hpplay/sdk/source/mirror/i;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->d(Lcom/hpplay/sdk/source/mirror/i;I)I

    .line 832
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/i;->l(Lcom/hpplay/sdk/source/mirror/i;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->e(Lcom/hpplay/sdk/source/mirror/i;I)I

    .line 833
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/i;->k(Lcom/hpplay/sdk/source/mirror/i;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->f(Lcom/hpplay/sdk/source/mirror/i;I)I

    .line 834
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/i;->l(Lcom/hpplay/sdk/source/mirror/i;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->g(Lcom/hpplay/sdk/source/mirror/i;I)I

    .line 835
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->j(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/mirror/e;->a(Z)Z

    .line 836
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/i;->c()V

    .line 841
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/i$3;->callbackBandwidth(I)V

    .line 842
    return-void

    .line 838
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->j(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/mirror/e;->a(Z)Z

    goto :goto_0
.end method

.method public onBroken()V
    .locals 3

    .prologue
    .line 862
    const-string v0, "ScreenCastThread"

    const-string v1, "-------->onBroken"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 863
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    const v1, 0x3384c

    const v2, 0x3385c

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/mirror/i;->a(Lcom/hpplay/sdk/source/mirror/i;II)V

    .line 865
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/i;->h()V

    .line 866
    return-void
.end method

.method public unlockCodec()V
    .locals 2

    .prologue
    .line 854
    const-string v0, "ScreenCastThread"

    const-string v1, "-------->unlockCodec"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 855
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->g(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$3;->c:Lcom/hpplay/sdk/source/mirror/i;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->g(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/k;->b()V

    .line 858
    :cond_0
    return-void
.end method
