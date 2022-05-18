.class public abstract Lnet/fortuna/vcal4j/model/frequence/Frequence;
.super Ljava/lang/Object;
.source "Frequence.java"


# instance fields
.field duration:I

.field interval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addModifier(Ljava/lang/String;)V
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lnet/fortuna/vcal4j/model/frequence/Frequence;->duration:I

    return v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 5
    iget v0, p0, Lnet/fortuna/vcal4j/model/frequence/Frequence;->interval:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 17
    iput p1, p0, Lnet/fortuna/vcal4j/model/frequence/Frequence;->duration:I

    .line 18
    return-void
.end method

.method public setInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 8
    iput p1, p0, Lnet/fortuna/vcal4j/model/frequence/Frequence;->interval:I

    .line 9
    return-void
.end method
