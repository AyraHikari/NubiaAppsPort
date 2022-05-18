.class public Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;
.super Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
.source "SourceFile"


# annotations
.annotation runtime Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/Descriptor;
    objectTypeIndication = 0x40
    tags = {
        0x5
    }
.end annotation


# static fields
.field public static audioObjectTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static samplingFrequencyIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aacScalefactorDataResilienceFlag:I

.field aacSectionDataResilienceFlag:I

.field aacSpectralDataResilienceFlag:I

.field audioObjectType:I

.field channelConfiguration:I

.field configBytes:[B

.field coreCoderDelay:I

.field dependsOnCoreCoder:I

.field directMapping:I

.field epConfig:I

.field erHvxcExtensionFlag:I

.field extensionAudioObjectType:I

.field extensionChannelConfiguration:I

.field extensionFlag:I

.field extensionFlag3:I

.field extensionSamplingFrequency:I

.field extensionSamplingFrequencyIndex:I

.field fillBits:I

.field frameLengthFlag:I

.field gaSpecificConfig:Z

.field hilnContMode:I

.field hilnEnhaLayer:I

.field hilnEnhaQuantMode:I

.field hilnFrameLength:I

.field hilnMaxNumLine:I

.field hilnQuantMode:I

.field hilnSampleRateCode:I

.field hvxcRateMode:I

.field hvxcVarMode:I

.field isBaseLayer:I

.field layerNr:I

.field layer_length:I

.field numOfSubFrame:I

.field paraExtensionFlag:I

.field paraMode:I

.field parametricSpecificConfig:Z

.field psPresentFlag:I

.field sacPayloadEmbedding:I

.field samplingFrequency:I

.field samplingFrequencyIndex:I

.field sbrPresentFlag:I

.field syncExtensionType:I

.field var_ScalableFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    .line 3
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x17700

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x15888

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0xfa00

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0xbb80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0xac44

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x7d00

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x5dc0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x5622

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x3e80

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x2ee0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x2b11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v11, 0xb

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x1f40

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v12, "AAC main"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v1, "AAC LC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v1, "AAC SSR"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v1, "AAC LTP"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v1, "SBR"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v1, "AAC Scalable"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v1, "TwinVQ"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v1, "CELP"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v1, "HVXC"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v1, "(reserved)"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TTSI"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Main synthetic"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Wavetable synthesis"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "General MIDI"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Algorithmic Synthesis and Audio FX"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ER AAC LC"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER AAC LTP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER AAC Scalable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER TwinVQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER BSAC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER AAC LD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER CELP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER HVXC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER HILN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER Parametric"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SSC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MPEG Surround"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(escape)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Layer-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Layer-2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Layer-3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ALS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SLS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SLS non-core"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER AAC ELD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SMR Simple"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SMR Main"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;-><init>()V

    return-void
.end method

.method private gaSpecificConfigSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getAudioObjectType(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)I
    .locals 2

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    add-int/lit8 v0, p1, 0x20

    :cond_0
    return v0
.end method

.method private parseErHvxcConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcVarMode:I

    const/4 p2, 0x2

    .line 2
    invoke-virtual {p4, p2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcRateMode:I

    .line 3
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->erHvxcExtensionFlag:I

    if-ne p2, p1, :cond_0

    .line 4
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->var_ScalableFlag:I

    :cond_0
    return-void
.end method

.method private parseGaSpecificConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->frameLengthFlag:I

    .line 2
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    if-ne v0, p1, :cond_0

    const/16 v0, 0xe

    .line 3
    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->coreCoderDelay:I

    .line 4
    :cond_0
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    if-eqz p2, :cond_7

    const/4 p2, 0x6

    const/16 v0, 0x14

    if-eq p3, p2, :cond_1

    if-ne p3, v0, :cond_2

    :cond_1
    const/4 p2, 0x3

    .line 5
    invoke-virtual {p4, p2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layerNr:I

    .line 6
    :cond_2
    iget p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    if-ne p2, p1, :cond_6

    const/16 p2, 0x16

    if-ne p3, p2, :cond_3

    const/4 p2, 0x5

    .line 7
    invoke-virtual {p4, p2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->numOfSubFrame:I

    const/16 p2, 0xb

    .line 8
    invoke-virtual {p4, p2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layer_length:I

    :cond_3
    const/16 p2, 0x11

    if-eq p3, p2, :cond_4

    const/16 p2, 0x13

    if-eq p3, p2, :cond_4

    if-eq p3, v0, :cond_4

    const/16 p2, 0x17

    if-ne p3, p2, :cond_5

    .line 9
    :cond_4
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSectionDataResilienceFlag:I

    .line 10
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacScalefactorDataResilienceFlag:I

    .line 11
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSpectralDataResilienceFlag:I

    .line 12
    :cond_5
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    .line 13
    :cond_6
    iput-boolean p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfig:Z

    return-void

    .line 14
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "can\'t parse program_config_element yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseHilnConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnQuantMode:I

    const/16 p1, 0x8

    .line 2
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnMaxNumLine:I

    const/4 p1, 0x4

    .line 3
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnSampleRateCode:I

    const/16 p1, 0xc

    .line 4
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnFrameLength:I

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnContMode:I

    return-void
.end method

.method private parseHilnEnexConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaLayer:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x2

    .line 2
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaQuantMode:I

    :cond_0
    return-void
.end method

.method private parseParaConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parseErHvxcConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parseHilnConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    .line 5
    :cond_1
    invoke-virtual {p4, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraExtensionFlag:I

    .line 6
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parametricSpecificConfig:Z

    return-void
.end method

.method private parseParametricSpecificConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->isBaseLayer:I

    if-ne v1, v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parseParaConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parseHilnEnexConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    .line 3
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacScalefactorDataResilienceFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacScalefactorDataResilienceFlag:I

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSectionDataResilienceFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSectionDataResilienceFlag:I

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSpectralDataResilienceFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSpectralDataResilienceFlag:I

    if-eq v2, v3, :cond_4

    return v1

    .line 6
    :cond_4
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    if-eq v2, v3, :cond_5

    return v1

    .line 7
    :cond_5
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    if-eq v2, v3, :cond_6

    return v1

    .line 8
    :cond_6
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->coreCoderDelay:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->coreCoderDelay:I

    if-eq v2, v3, :cond_7

    return v1

    .line 9
    :cond_7
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    if-eq v2, v3, :cond_8

    return v1

    .line 10
    :cond_8
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->directMapping:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->directMapping:I

    if-eq v2, v3, :cond_9

    return v1

    .line 11
    :cond_9
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    if-eq v2, v3, :cond_a

    return v1

    .line 12
    :cond_a
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->erHvxcExtensionFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->erHvxcExtensionFlag:I

    if-eq v2, v3, :cond_b

    return v1

    .line 13
    :cond_b
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    if-eq v2, v3, :cond_c

    return v1

    .line 14
    :cond_c
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    if-eq v2, v3, :cond_d

    return v1

    .line 15
    :cond_d
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    if-eq v2, v3, :cond_e

    return v1

    .line 16
    :cond_e
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    if-eq v2, v3, :cond_f

    return v1

    .line 17
    :cond_f
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    if-eq v2, v3, :cond_10

    return v1

    .line 18
    :cond_10
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    if-eq v2, v3, :cond_11

    return v1

    .line 19
    :cond_11
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->fillBits:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->fillBits:I

    if-eq v2, v3, :cond_12

    return v1

    .line 20
    :cond_12
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->frameLengthFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->frameLengthFlag:I

    if-eq v2, v3, :cond_13

    return v1

    .line 21
    :cond_13
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfig:Z

    iget-boolean v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfig:Z

    if-eq v2, v3, :cond_14

    return v1

    .line 22
    :cond_14
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnContMode:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnContMode:I

    if-eq v2, v3, :cond_15

    return v1

    .line 23
    :cond_15
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaLayer:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaLayer:I

    if-eq v2, v3, :cond_16

    return v1

    .line 24
    :cond_16
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaQuantMode:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaQuantMode:I

    if-eq v2, v3, :cond_17

    return v1

    .line 25
    :cond_17
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnFrameLength:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnFrameLength:I

    if-eq v2, v3, :cond_18

    return v1

    .line 26
    :cond_18
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnMaxNumLine:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnMaxNumLine:I

    if-eq v2, v3, :cond_19

    return v1

    .line 27
    :cond_19
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnQuantMode:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnQuantMode:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 28
    :cond_1a
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnSampleRateCode:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnSampleRateCode:I

    if-eq v2, v3, :cond_1b

    return v1

    .line 29
    :cond_1b
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcRateMode:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcRateMode:I

    if-eq v2, v3, :cond_1c

    return v1

    .line 30
    :cond_1c
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcVarMode:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcVarMode:I

    if-eq v2, v3, :cond_1d

    return v1

    .line 31
    :cond_1d
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->isBaseLayer:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->isBaseLayer:I

    if-eq v2, v3, :cond_1e

    return v1

    .line 32
    :cond_1e
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layerNr:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layerNr:I

    if-eq v2, v3, :cond_1f

    return v1

    .line 33
    :cond_1f
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layer_length:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layer_length:I

    if-eq v2, v3, :cond_20

    return v1

    .line 34
    :cond_20
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->numOfSubFrame:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->numOfSubFrame:I

    if-eq v2, v3, :cond_21

    return v1

    .line 35
    :cond_21
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraExtensionFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraExtensionFlag:I

    if-eq v2, v3, :cond_22

    return v1

    .line 36
    :cond_22
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    if-eq v2, v3, :cond_23

    return v1

    .line 37
    :cond_23
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parametricSpecificConfig:Z

    iget-boolean v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parametricSpecificConfig:Z

    if-eq v2, v3, :cond_24

    return v1

    .line 38
    :cond_24
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:I

    if-eq v2, v3, :cond_25

    return v1

    .line 39
    :cond_25
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sacPayloadEmbedding:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sacPayloadEmbedding:I

    if-eq v2, v3, :cond_26

    return v1

    .line 40
    :cond_26
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    if-eq v2, v3, :cond_27

    return v1

    .line 41
    :cond_27
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    if-eq v2, v3, :cond_28

    return v1

    .line 42
    :cond_28
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:I

    if-eq v2, v3, :cond_29

    return v1

    .line 43
    :cond_29
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    if-eq v2, v3, :cond_2a

    return v1

    .line 44
    :cond_2a
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->var_ScalableFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->var_ScalableFlag:I

    if-eq v2, v3, :cond_2b

    return v1

    .line 45
    :cond_2b
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->configBytes:[B

    iget-object p1, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->configBytes:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_2c

    return v1

    :cond_2c
    return v0

    :cond_2d
    :goto_0
    return v1
.end method

.method public getAudioObjectType()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    return v0
.end method

.method public getConfigBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->configBytes:[B

    return-object v0
.end method

.method public getExtensionAudioObjectType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    return v0
.end method

.method public getPsPresentFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:I

    return v0
.end method

.method public getSamplingFrequency()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSbrPresentFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->configBytes:[B

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sacPayloadEmbedding:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->fillBits:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->directMapping:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->frameLengthFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 19
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->coreCoderDelay:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 21
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layerNr:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->numOfSubFrame:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 23
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layer_length:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSectionDataResilienceFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacScalefactorDataResilienceFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 26
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSpectralDataResilienceFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 27
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 28
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfig:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 29
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->isBaseLayer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 30
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 31
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraExtensionFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 32
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcVarMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcRateMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 34
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->erHvxcExtensionFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 35
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->var_ScalableFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 36
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnQuantMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 37
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnMaxNumLine:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 38
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnSampleRateCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 39
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnFrameLength:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 40
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnContMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 41
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaLayer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 42
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaQuantMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 43
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parametricSpecificConfig:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public parseDetail(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;->sizeOfInstance:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;->sizeOfInstance:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;->sizeOfInstance:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->configBytes:[B

    .line 5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 7
    new-instance p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getAudioObjectType(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/4 v0, 0x4

    .line 9
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    const/16 v2, 0x18

    const/16 v3, 0xf

    if-ne v1, v3, :cond_0

    .line 10
    invoke-virtual {p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    .line 11
    :cond_0
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    .line 12
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/16 v4, 0x16

    const/16 v5, 0x1d

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-eq v1, v6, :cond_2

    if-ne v1, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    goto :goto_1

    .line 14
    :cond_2
    :goto_0
    iput v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    .line 15
    iput v7, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:I

    if-ne v1, v5, :cond_3

    .line 16
    iput v7, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:I

    .line 17
    :cond_3
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    if-ne v1, v3, :cond_4

    .line 18
    invoke-virtual {p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    .line 19
    :cond_4
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getAudioObjectType(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    if-ne v1, v4, :cond_5

    .line 20
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    .line 21
    :cond_5
    :goto_1
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 22
    :pswitch_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse SymbolicMusicSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :pswitch_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse ELDSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :pswitch_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse SLSSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :pswitch_4
    invoke-virtual {p1, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->fillBits:I

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse ALSSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :pswitch_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse DSTSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :pswitch_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse MPEG_1_2_SpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :pswitch_7
    invoke-virtual {p1, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sacPayloadEmbedding:I

    .line 30
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse SpatialSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :pswitch_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse SSCSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :pswitch_9
    iget v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    iget v8, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    invoke-direct {p0, v5, v8, v1, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parseParametricSpecificConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    goto :goto_2

    .line 33
    :pswitch_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse ErrorResilientHvxcSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :pswitch_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse ErrorResilientCelpSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :pswitch_c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse StructuredAudioSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :pswitch_d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse TTSSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :pswitch_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse HvxcSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :pswitch_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse CelpSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :pswitch_10
    iget v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    iget v8, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    invoke-direct {p0, v5, v8, v1, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parseGaSpecificConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    .line 40
    :goto_2
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/16 v5, 0x11

    if-eq v1, v5, :cond_6

    const/16 v5, 0x27

    if-eq v1, v5, :cond_6

    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :cond_6
    :pswitch_11
    const/4 v1, 0x2

    .line 41
    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    iput v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    if-eq v5, v1, :cond_d

    const/4 v1, 0x3

    if-eq v5, v1, :cond_d

    if-ne v5, v1, :cond_8

    .line 42
    invoke-virtual {p1, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->directMapping:I

    if-eqz v1, :cond_7

    goto :goto_3

    .line 43
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not implemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_8
    :goto_3
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    if-eq v1, v6, :cond_c

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->remainingBits()I

    move-result v1

    const/16 v5, 0x10

    if-lt v1, v5, :cond_c

    const/16 v1, 0xb

    .line 45
    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    iput v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    const/16 v8, 0x2b7

    if-ne v5, v8, :cond_c

    .line 46
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getAudioObjectType(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)I

    move-result v5

    iput v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    if-ne v5, v6, :cond_a

    .line 47
    invoke-virtual {p1, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    iput v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:I

    if-ne v5, v7, :cond_a

    .line 48
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    iput v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    if-ne v5, v3, :cond_9

    .line 49
    invoke-virtual {p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    iput v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    .line 50
    :cond_9
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->remainingBits()I

    move-result v5

    const/16 v6, 0xc

    if-lt v5, v6, :cond_a

    .line 51
    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    const/16 v5, 0x548

    if-ne v1, v5, :cond_a

    .line 52
    invoke-virtual {p1, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:I

    .line 53
    :cond_a
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    if-ne v1, v4, :cond_c

    .line 54
    invoke-virtual {p1, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:I

    if-ne v1, v7, :cond_b

    .line 55
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    if-ne v1, v3, :cond_b

    .line 56
    invoke-virtual {p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    .line 57
    :cond_b
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    :cond_c
    return-void

    .line 58
    :cond_d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse ErrorProtectionSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_0
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_10
        :pswitch_0
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public serialize()Ljava/nio/ByteBuffer;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->serializedSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x5

    .line 2
    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 3
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->serializedSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {v0, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 4
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 5
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    invoke-virtual {v2, v3, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 6
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 7
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    const/16 v4, 0xf

    if-eq v1, v4, :cond_0

    .line 8
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    invoke-virtual {v2, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    return-object v0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t serialize that yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serializedSize()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfigSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t serialize that yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAudioObjectType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    return-void
.end method

.method public setChannelConfiguration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    return-void
.end method

.method public setSamplingFrequency(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    return-void
.end method

.method public setSamplingFrequencyIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioSpecificConfig"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{configBytes="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->configBytes:[B

    invoke-static {v1}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", audioObjectType="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", samplingFrequencyIndex="

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", samplingFrequency="

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", channelConfiguration="

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    if-lez v3, :cond_0

    const-string v3, ", extensionAudioObjectType="

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", sbrPresentFlag="

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", psPresentFlag="

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", extensionSamplingFrequencyIndex="

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extensionSamplingFrequency="

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extensionChannelConfiguration="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", syncExtensionType="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfig:Z

    if-eqz v1, :cond_1

    const-string v1, ", frameLengthFlag="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->frameLengthFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dependsOnCoreCoder="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", coreCoderDelay="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->coreCoderDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extensionFlag="

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layerNr="

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layerNr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numOfSubFrame="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->numOfSubFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layer_length="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layer_length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aacSectionDataResilienceFlag="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSectionDataResilienceFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aacScalefactorDataResilienceFlag="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacScalefactorDataResilienceFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aacSpectralDataResilienceFlag="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSpectralDataResilienceFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extensionFlag3="

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    :cond_1
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parametricSpecificConfig:Z

    if-eqz v1, :cond_2

    const-string v1, ", isBaseLayer="

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->isBaseLayer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paraMode="

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paraExtensionFlag="

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraExtensionFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hvxcVarMode="

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcVarMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hvxcRateMode="

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcRateMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", erHvxcExtensionFlag="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->erHvxcExtensionFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", var_ScalableFlag="

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->var_ScalableFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnQuantMode="

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnQuantMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnMaxNumLine="

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnMaxNumLine:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnSampleRateCode="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnSampleRateCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnFrameLength="

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnFrameLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnContMode="

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnContMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnEnhaLayer="

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaLayer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnEnhaQuantMode="

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaQuantMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
