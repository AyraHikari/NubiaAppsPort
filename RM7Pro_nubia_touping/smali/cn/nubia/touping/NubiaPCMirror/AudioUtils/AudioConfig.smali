.class public Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;
.super Ljava/lang/Object;
.source "AudioConfig.java"


# static fields
.field private static AUDIO_FORMAT:I

.field private static CHANNEL_CONFIG:I

.field private static CHANNEL_COUNT:I

.field public static SAMPLE_RATE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 6
    const v0, 0xbb80

    sput v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->SAMPLE_RATE:I

    .line 7
    sput v1, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->CHANNEL_COUNT:I

    .line 8
    const/16 v0, 0xc

    sput v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->CHANNEL_CONFIG:I

    .line 9
    sput v1, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->AUDIO_FORMAT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->AUDIO_FORMAT:I

    return v0
.end method

.method public getChannelConfig()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->CHANNEL_CONFIG:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 16
    sget v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->CHANNEL_COUNT:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 12
    sget v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->SAMPLE_RATE:I

    return v0
.end method
