.class public interface abstract Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;
.super Ljava/lang/Object;
.source "GeneralParticleSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onEmitListner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bluestareffects/sdk/materials/algorithm/IParticle;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onEmit(F)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end method
