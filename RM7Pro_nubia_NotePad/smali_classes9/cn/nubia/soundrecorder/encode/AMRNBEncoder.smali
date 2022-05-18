.class public Lcn/nubia/soundrecorder/encode/AMRNBEncoder;
.super Ljava/lang/Object;
.source "AMRNBEncoder.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "amrnb-notepad-encoder"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native encodeByte([BI)V
.end method

.method public native encodeShort([SI)V
.end method

.method public native exit()V
.end method

.method public native init(IIIILjava/lang/String;)V
.end method
