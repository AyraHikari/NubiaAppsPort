.class public Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;
.super Ljava/lang/Object;
.source "GeneralParticleSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;,
        Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bluestareffects/sdk/materials/algorithm/IParticle;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCacheParticle:Z

.field private mCachedParticles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mEmitMode:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

.field private mEmitTimes:I

.field private mEmitedTimes:I

.field private mListners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;",
            ">;"
        }
    .end annotation
.end field

.field private mParticles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mTimeInterval:F

.field private mTimeSaved:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    .local p0, "this":Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;, "Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;-><init>(Z)V

    .line 19
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "cacheParticle"    # Z

    .prologue
    .local p0, "this":Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;, "Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem<TT;>;"
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->EveryFrame:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mEmitMode:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mTimeSaved:F

    .line 32
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mTimeInterval:F

    .line 48
    iput v1, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mEmitTimes:I

    .line 49
    iput v1, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mEmitedTimes:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mListners:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mParticles:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mCachedParticles:Ljava/util/ArrayList;

    .line 22
    iput-boolean p1, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mCacheParticle:Z

    .line 23
    return-void
.end method

.method private emit(F)V
    .locals 6
    .param p1, "timePassed"    # F

    .prologue
    .line 65
    .local p0, "this":Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;, "Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem<TT;>;"
    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mListners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;

    .line 66
    .local v0, "listner":Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;
    invoke-interface {v0, p1}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;->onEmit(F)Ljava/util/ArrayList;

    move-result-object v2

    .line 67
    .local v2, "particleToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bluestareffects/sdk/materials/algorithm/IParticle;

    .line 68
    .local v1, "particle":Lcom/bluestareffects/sdk/materials/algorithm/IParticle;, "TT;"
    iget-object v5, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mParticles:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    .end local v0    # "listner":Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;
    .end local v1    # "particle":Lcom/bluestareffects/sdk/materials/algorithm/IParticle;, "TT;"
    .end local v2    # "particleToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public addOnEmitListner(Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;)V
    .locals 1
    .param p1, "listner"    # Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;

    .prologue
    .line 61
    .local p0, "this":Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;, "Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem<TT;>;"
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mListners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public addParticle(Lcom/bluestareffects/sdk/materials/algorithm/IParticle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;, "Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem<TT;>;"
    .local p1, "particle":Lcom/bluestareffects/sdk/materials/algorithm/IParticle;, "TT;"
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mParticles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public getCachedParticle()Lcom/bluestareffects/sdk/materials/algorithm/IParticle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;, "Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem<TT;>;"
    const/4 v2, 0x0

    .line 80
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mCachedParticles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mCachedParticles:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/algorithm/IParticle;

    .line 82
    .local v0, "particle":Lcom/bluestareffects/sdk/materials/algorithm/IParticle;, "TT;"
    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mCachedParticles:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 85
    .end local v0    # "particle":Lcom/bluestareffects/sdk/materials/algorithm/IParticle;, "TT;"
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParticleCount()I
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;, "Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem<TT;>;"
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mParticles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getParticlesAlive()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;, "Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem<TT;>;"
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mParticles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setEmitInterval(F)V
    .locals 2
    .param p1, "timeInterval"    # F

    .prologue
    .line 43
    .local p0, "this":Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;, "Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem<TT;>;"
    const/high16 v0, 0x41800000    # 16.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Time interval can not be less than 16ms"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput p1, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mTimeInterval:F

    .line 46
    return-void
.end method

.method public setEmitMode(Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    .prologue
    .line 35
    .local p0, "this":Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;, "Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem<TT;>;"
    iput-object p1, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mEmitMode:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    .line 36
    return-void
.end method

.method public setEmitTimes(I)V
    .locals 0
    .param p1, "times"    # I

    .prologue
    .line 51
    .local p0, "this":Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;, "Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem<TT;>;"
    iput p1, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mEmitTimes:I

    .line 52
    return-void
.end method

.method public update(F)V
    .locals 5
    .param p1, "timePassed"    # F

    .prologue
    .line 90
    .local p0, "this":Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;, "Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem<TT;>;"
    const/16 v2, 0x1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeneralParticleSystem::update timePassed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " particles = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mParticles:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v2, v3}, Lcom/bluestareffects/sdk/util/BSLog;->v(ILjava/lang/String;)I

    .line 92
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mEmitMode:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    sget-object v3, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->EveryFrame:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    if-ne v2, v3, :cond_2

    .line 93
    invoke-direct {p0, p1}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->emit(F)V

    .line 107
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mCachedParticles:Ljava/util/ArrayList;

    .line 108
    .local v0, "deadParticles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mParticles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bluestareffects/sdk/materials/algorithm/IParticle;

    .line 109
    .local v1, "particle":Lcom/bluestareffects/sdk/materials/algorithm/IParticle;, "TT;"
    invoke-interface {v1, p1}, Lcom/bluestareffects/sdk/materials/algorithm/IParticle;->update(F)V

    .line 110
    invoke-interface {v1}, Lcom/bluestareffects/sdk/materials/algorithm/IParticle;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v1}, Lcom/bluestareffects/sdk/materials/algorithm/IParticle;->destroy()V

    goto :goto_1

    .line 94
    .end local v0    # "deadParticles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .end local v1    # "particle":Lcom/bluestareffects/sdk/materials/algorithm/IParticle;, "TT;"
    :cond_2
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mEmitMode:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    sget-object v3, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->Interval:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    if-ne v2, v3, :cond_3

    .line 95
    iget v2, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mTimeSaved:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mTimeSaved:F

    .line 96
    iget v2, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mTimeSaved:F

    iget v3, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mTimeInterval:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 97
    iget v2, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mTimeSaved:F

    iget v3, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mTimeInterval:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mTimeSaved:F

    .line 98
    iget v2, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mTimeInterval:F

    invoke-direct {p0, v2}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->emit(F)V

    goto :goto_0

    .line 100
    :cond_3
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mEmitMode:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    sget-object v3, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->Times:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    if-ne v2, v3, :cond_0

    .line 101
    iget v2, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mEmitedTimes:I

    iget v3, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mEmitTimes:I

    if-ge v2, v3, :cond_0

    .line 102
    invoke-direct {p0, p1}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->emit(F)V

    .line 103
    iget v2, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mEmitedTimes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mEmitedTimes:I

    goto :goto_0

    .line 116
    .restart local v0    # "deadParticles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bluestareffects/sdk/materials/algorithm/IParticle;

    .line 117
    .restart local v1    # "particle":Lcom/bluestareffects/sdk/materials/algorithm/IParticle;, "TT;"
    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mParticles:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 119
    .end local v1    # "particle":Lcom/bluestareffects/sdk/materials/algorithm/IParticle;, "TT;"
    :cond_5
    iget-boolean v2, p0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->mCacheParticle:Z

    if-nez v2, :cond_6

    .line 120
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    :cond_6
    return-void
.end method
