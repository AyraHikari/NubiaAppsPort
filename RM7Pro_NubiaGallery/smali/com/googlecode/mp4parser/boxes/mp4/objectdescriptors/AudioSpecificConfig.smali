.class public Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;
.super Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
.source "AudioSpecificConfig.java"


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

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    .line 797
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x17700

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x15888

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0xfa00

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0xbb80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0xac44

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x7d00

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x5dc0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x5622

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x3e80

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x2ee0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x2b11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v11, 0xb

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x1f40

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v12, "AAC main"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v1, "AAC LC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v1, "AAC SSR"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v1, "AAC LTP"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v1, "SBR"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v1, "AAC Scalable"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v1, "TwinVQ"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v1, "CELP"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v1, "HVXC"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const-string v1, "(reserved)"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TTSI"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Main synthetic"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Wavetable synthesis"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "General MIDI"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Algorithmic Synthesis and Audio FX"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ER AAC LC"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER AAC LTP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER AAC Scalable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER TwinVQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER BSAC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER AAC LD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER CELP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER HVXC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER HILN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER Parametric"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SSC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MPEG Surround"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(escape)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Layer-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Layer-2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Layer-3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ALS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SLS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SLS non-core"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER AAC ELD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SMR Simple"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
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

    .line 268
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 539
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    .line 541
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    add-int/lit8 v0, p1, 0x20

    :cond_0
    return v0
.end method

.method private parseErHvxcConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    .line 645
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcVarMode:I

    const/4 p2, 0x2

    .line 646
    invoke-virtual {p4, p2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcRateMode:I

    .line 647
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->erHvxcExtensionFlag:I

    if-ne p2, p1, :cond_0

    .line 650
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->var_ScalableFlag:I

    :cond_0
    return-void
.end method

.method private parseGaSpecificConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    .line 551
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->frameLengthFlag:I

    .line 552
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    if-ne v0, p1, :cond_0

    const/16 v0, 0xe

    .line 554
    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->coreCoderDelay:I

    .line 556
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

    .line 562
    invoke-virtual {p4, p2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layerNr:I

    .line 564
    :cond_2
    iget p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    if-ne p2, p1, :cond_6

    const/16 p2, 0x16

    if-ne p3, p2, :cond_3

    const/4 p2, 0x5

    .line 566
    invoke-virtual {p4, p2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->numOfSubFrame:I

    const/16 p2, 0xb

    .line 567
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

    .line 571
    :cond_4
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSectionDataResilienceFlag:I

    .line 572
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacScalefactorDataResilienceFlag:I

    .line 573
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSpectralDataResilienceFlag:I

    .line 575
    :cond_5
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    .line 581
    :cond_6
    iput-boolean p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfig:Z

    return-void

    .line 558
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "can\'t parse program_config_element yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseHilnConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    .line 665
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnQuantMode:I

    const/16 p1, 0x8

    .line 666
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnMaxNumLine:I

    const/4 p1, 0x4

    .line 667
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnSampleRateCode:I

    const/16 p1, 0xc

    .line 668
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnFrameLength:I

    const/4 p1, 0x2

    .line 669
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnContMode:I

    return-void
.end method

.method private parseHilnEnexConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    .line 682
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaLayer:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x2

    .line 684
    invoke-virtual {p4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaQuantMode:I

    :cond_0
    return-void
.end method

.method private parseParaConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 620
    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 623
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parseErHvxcConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    .line 625
    :cond_0
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    if-eqz v0, :cond_1

    .line 626
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parseHilnConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    .line 629
    :cond_1
    invoke-virtual {p4, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraExtensionFlag:I

    .line 630
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parametricSpecificConfig:Z

    return-void
.end method

.method private parseParametricSpecificConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 595
    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->isBaseLayer:I

    if-ne v1, v0, :cond_0

    .line 597
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parseParaConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    goto :goto_0

    .line 599
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

    .line 990
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    .line 994
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    .line 996
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacScalefactorDataResilienceFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacScalefactorDataResilienceFlag:I

    if-eq v2, v3, :cond_2

    return v1

    .line 999
    :cond_2
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSectionDataResilienceFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSectionDataResilienceFlag:I

    if-eq v2, v3, :cond_3

    return v1

    .line 1002
    :cond_3
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSpectralDataResilienceFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSpectralDataResilienceFlag:I

    if-eq v2, v3, :cond_4

    return v1

    .line 1005
    :cond_4
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    if-eq v2, v3, :cond_5

    return v1

    .line 1008
    :cond_5
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    if-eq v2, v3, :cond_6

    return v1

    .line 1011
    :cond_6
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->coreCoderDelay:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->coreCoderDelay:I

    if-eq v2, v3, :cond_7

    return v1

    .line 1014
    :cond_7
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    if-eq v2, v3, :cond_8

    return v1

    .line 1017
    :cond_8
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->directMapping:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->directMapping:I

    if-eq v2, v3, :cond_9

    return v1

    .line 1020
    :cond_9
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    if-eq v2, v3, :cond_a

    return v1

    .line 1023
    :cond_a
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->erHvxcExtensionFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->erHvxcExtensionFlag:I

    if-eq v2, v3, :cond_b

    return v1

    .line 1026
    :cond_b
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    if-eq v2, v3, :cond_c

    return v1

    .line 1029
    :cond_c
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    if-eq v2, v3, :cond_d

    return v1

    .line 1032
    :cond_d
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    if-eq v2, v3, :cond_e

    return v1

    .line 1035
    :cond_e
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    if-eq v2, v3, :cond_f

    return v1

    .line 1038
    :cond_f
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    if-eq v2, v3, :cond_10

    return v1

    .line 1041
    :cond_10
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    if-eq v2, v3, :cond_11

    return v1

    .line 1044
    :cond_11
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->fillBits:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->fillBits:I

    if-eq v2, v3, :cond_12

    return v1

    .line 1047
    :cond_12
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->frameLengthFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->frameLengthFlag:I

    if-eq v2, v3, :cond_13

    return v1

    .line 1050
    :cond_13
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfig:Z

    iget-boolean v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfig:Z

    if-eq v2, v3, :cond_14

    return v1

    .line 1053
    :cond_14
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnContMode:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnContMode:I

    if-eq v2, v3, :cond_15

    return v1

    .line 1056
    :cond_15
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaLayer:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaLayer:I

    if-eq v2, v3, :cond_16

    return v1

    .line 1059
    :cond_16
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaQuantMode:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaQuantMode:I

    if-eq v2, v3, :cond_17

    return v1

    .line 1062
    :cond_17
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnFrameLength:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnFrameLength:I

    if-eq v2, v3, :cond_18

    return v1

    .line 1065
    :cond_18
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnMaxNumLine:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnMaxNumLine:I

    if-eq v2, v3, :cond_19

    return v1

    .line 1068
    :cond_19
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnQuantMode:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnQuantMode:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 1071
    :cond_1a
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnSampleRateCode:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnSampleRateCode:I

    if-eq v2, v3, :cond_1b

    return v1

    .line 1074
    :cond_1b
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcRateMode:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcRateMode:I

    if-eq v2, v3, :cond_1c

    return v1

    .line 1077
    :cond_1c
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcVarMode:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcVarMode:I

    if-eq v2, v3, :cond_1d

    return v1

    .line 1080
    :cond_1d
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->isBaseLayer:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->isBaseLayer:I

    if-eq v2, v3, :cond_1e

    return v1

    .line 1083
    :cond_1e
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layerNr:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layerNr:I

    if-eq v2, v3, :cond_1f

    return v1

    .line 1086
    :cond_1f
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layer_length:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layer_length:I

    if-eq v2, v3, :cond_20

    return v1

    .line 1089
    :cond_20
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->numOfSubFrame:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->numOfSubFrame:I

    if-eq v2, v3, :cond_21

    return v1

    .line 1092
    :cond_21
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraExtensionFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraExtensionFlag:I

    if-eq v2, v3, :cond_22

    return v1

    .line 1095
    :cond_22
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    if-eq v2, v3, :cond_23

    return v1

    .line 1098
    :cond_23
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parametricSpecificConfig:Z

    iget-boolean v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parametricSpecificConfig:Z

    if-eq v2, v3, :cond_24

    return v1

    .line 1101
    :cond_24
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:I

    if-eq v2, v3, :cond_25

    return v1

    .line 1104
    :cond_25
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sacPayloadEmbedding:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sacPayloadEmbedding:I

    if-eq v2, v3, :cond_26

    return v1

    .line 1107
    :cond_26
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    if-eq v2, v3, :cond_27

    return v1

    .line 1110
    :cond_27
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    if-eq v2, v3, :cond_28

    return v1

    .line 1113
    :cond_28
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:I

    if-eq v2, v3, :cond_29

    return v1

    .line 1116
    :cond_29
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    if-eq v2, v3, :cond_2a

    return v1

    .line 1119
    :cond_2a
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->var_ScalableFlag:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->var_ScalableFlag:I

    if-eq v2, v3, :cond_2b

    return v1

    .line 1122
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

    .line 693
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .line 982
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    return v0
.end method

.method public getConfigBytes()[B
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->configBytes:[B

    return-object v0
.end method

.method public getExtensionAudioObjectType()I
    .locals 1

    .line 697
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    return v0
.end method

.method public getPsPresentFlag()I
    .locals 1

    .line 705
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:I

    return v0
.end method

.method public getSamplingFrequency()I
    .locals 2

    .line 978
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

    .line 701
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1131
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->configBytes:[B

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 1132
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1133
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1134
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1135
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1136
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1137
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1138
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1139
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1140
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1141
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1142
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sacPayloadEmbedding:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1143
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->fillBits:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1144
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1145
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->directMapping:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1146
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1147
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->frameLengthFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1148
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1149
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->coreCoderDelay:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1150
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1151
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layerNr:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1152
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->numOfSubFrame:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1153
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layer_length:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1154
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSectionDataResilienceFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1155
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacScalefactorDataResilienceFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1156
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSpectralDataResilienceFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1157
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1158
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfig:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1159
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->isBaseLayer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1160
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1161
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraExtensionFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1162
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcVarMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1163
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcRateMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1164
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->erHvxcExtensionFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1165
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->var_ScalableFlag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1166
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnQuantMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1167
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnMaxNumLine:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1168
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnSampleRateCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1169
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnFrameLength:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1170
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnContMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1171
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaLayer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1172
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaQuantMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1173
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parametricSpecificConfig:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public parseDetail(Ljava/nio/ByteBuffer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 323
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sizeOfInstance:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 324
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sizeOfInstance:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 327
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sizeOfInstance:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->configBytes:[B

    .line 328
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 329
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 331
    new-instance p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 332
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getAudioObjectType(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/4 v0, 0x4

    .line 333
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    const/16 v2, 0x18

    const/16 v3, 0xf

    if-ne v1, v3, :cond_0

    .line 336
    invoke-virtual {p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    .line 339
    :cond_0
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    .line 341
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

    .line 355
    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    goto :goto_1

    .line 343
    :cond_2
    :goto_0
    iput v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    .line 344
    iput v7, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:I

    if-ne v1, v5, :cond_3

    .line 346
    iput v7, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:I

    .line 348
    :cond_3
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    if-ne v1, v3, :cond_4

    .line 350
    invoke-virtual {p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    .line 351
    :cond_4
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getAudioObjectType(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    if-ne v1, v4, :cond_5

    .line 353
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    .line 358
    :cond_5
    :goto_1
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 441
    :pswitch_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse SymbolicMusicSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 436
    :pswitch_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse ELDSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 432
    :pswitch_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse SLSSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 426
    :pswitch_4
    invoke-virtual {p1, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->fillBits:I

    .line 427
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse ALSSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 422
    :pswitch_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse DSTSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 418
    :pswitch_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse MPEG_1_2_SpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 411
    :pswitch_7
    invoke-virtual {p1, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sacPayloadEmbedding:I

    .line 412
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse SpatialSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 407
    :pswitch_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse SSCSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 403
    :pswitch_9
    iget v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    iget v8, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    invoke-direct {p0, v5, v8, v1, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parseParametricSpecificConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    goto :goto_2

    .line 398
    :pswitch_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse ErrorResilientHvxcSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :pswitch_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse ErrorResilientCelpSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 390
    :pswitch_c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse StructuredAudioSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 383
    :pswitch_d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse TTSSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 379
    :pswitch_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse HvxcSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 375
    :pswitch_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse CelpSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 371
    :pswitch_10
    iget v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    iget v8, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    invoke-direct {p0, v5, v8, v1, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parseGaSpecificConfig(IIILcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)V

    .line 448
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

    .line 460
    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    iput v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->epConfig:I

    if-eq v5, v1, :cond_d

    const/4 v1, 0x3

    if-eq v5, v1, :cond_d

    if-ne v5, v1, :cond_8

    .line 466
    invoke-virtual {p1, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->directMapping:I

    if-eqz v1, :cond_7

    goto :goto_3

    .line 469
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not implemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 474
    :cond_8
    :goto_3
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    if-eq v1, v6, :cond_c

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->remainingBits()I

    move-result v1

    const/16 v5, 0x10

    if-lt v1, v5, :cond_c

    const/16 v1, 0xb

    .line 475
    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    iput v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    const/16 v8, 0x2b7

    if-ne v5, v8, :cond_c

    .line 477
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getAudioObjectType(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;)I

    move-result v5

    iput v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    if-ne v5, v6, :cond_a

    .line 479
    invoke-virtual {p1, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    iput v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:I

    if-ne v5, v7, :cond_a

    .line 481
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    iput v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    if-ne v5, v3, :cond_9

    .line 483
    invoke-virtual {p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    iput v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    .line 485
    :cond_9
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->remainingBits()I

    move-result v5

    const/16 v6, 0xc

    if-lt v5, v6, :cond_a

    .line 486
    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    const/16 v5, 0x548

    if-ne v1, v5, :cond_a

    .line 488
    invoke-virtual {p1, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:I

    .line 493
    :cond_a
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    if-ne v1, v4, :cond_c

    .line 494
    invoke-virtual {p1, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:I

    if-ne v1, v7, :cond_b

    .line 496
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    if-ne v1, v3, :cond_b

    .line 498
    invoke-virtual {p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    .line 501
    :cond_b
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    :cond_c
    return-void

    .line 462
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

    .line 522
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->serializedSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x5

    .line 523
    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 524
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->serializedSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {v0, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 525
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 526
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    invoke-virtual {v2, v3, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 527
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 528
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    const/16 v4, 0xf

    if-eq v1, v4, :cond_0

    .line 531
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    invoke-virtual {v2, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    return-object v0

    .line 529
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t serialize that yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serializedSize()I
    .locals 2

    .line 513
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfigSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0

    .line 516
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t serialize that yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAudioObjectType(I)V
    .locals 0

    .line 709
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    return-void
.end method

.method public setChannelConfiguration(I)V
    .locals 0

    .line 721
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    return-void
.end method

.method public setSamplingFrequency(I)V
    .locals 0

    .line 717
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    return-void
.end method

.method public setSamplingFrequencyIndex(I)V
    .locals 0

    .line 713
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioSpecificConfig"

    .line 727
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{configBytes="

    .line 728
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->configBytes:[B

    invoke-static {v2}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", audioObjectType="

    .line 729
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", samplingFrequencyIndex="

    .line 730
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    iget v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", samplingFrequency="

    .line 731
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequency:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelConfiguration="

    .line 732
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->channelConfiguration:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 733
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    if-lez v1, :cond_0

    const-string v1, ", extensionAudioObjectType="

    .line 734
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->audioObjectTypeMap:Ljava/util/Map;

    iget v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionAudioObjectType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sbrPresentFlag="

    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->sbrPresentFlag:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", psPresentFlag="

    .line 736
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->psPresentFlag:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extensionSamplingFrequencyIndex="

    .line 737
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->samplingFrequencyIndexMap:Ljava/util/Map;

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequencyIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extensionSamplingFrequency="

    .line 738
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionSamplingFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extensionChannelConfiguration="

    .line 739
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionChannelConfiguration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", syncExtensionType="

    .line 745
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->syncExtensionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 746
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->gaSpecificConfig:Z

    if-eqz v1, :cond_1

    const-string v1, ", frameLengthFlag="

    .line 747
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->frameLengthFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dependsOnCoreCoder="

    .line 748
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->dependsOnCoreCoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", coreCoderDelay="

    .line 749
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->coreCoderDelay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extensionFlag="

    .line 750
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layerNr="

    .line 751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layerNr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numOfSubFrame="

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->numOfSubFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layer_length="

    .line 753
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->layer_length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aacSectionDataResilienceFlag="

    .line 754
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSectionDataResilienceFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aacScalefactorDataResilienceFlag="

    .line 755
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacScalefactorDataResilienceFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aacSpectralDataResilienceFlag="

    .line 756
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->aacSpectralDataResilienceFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extensionFlag3="

    .line 757
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->extensionFlag3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 759
    :cond_1
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->parametricSpecificConfig:Z

    if-eqz v1, :cond_2

    const-string v1, ", isBaseLayer="

    .line 760
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->isBaseLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paraMode="

    .line 761
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paraExtensionFlag="

    .line 762
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->paraExtensionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hvxcVarMode="

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcVarMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hvxcRateMode="

    .line 764
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hvxcRateMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", erHvxcExtensionFlag="

    .line 765
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->erHvxcExtensionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", var_ScalableFlag="

    .line 766
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->var_ScalableFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnQuantMode="

    .line 767
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnQuantMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnMaxNumLine="

    .line 768
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnMaxNumLine:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnSampleRateCode="

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnSampleRateCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnFrameLength="

    .line 770
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnFrameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnContMode="

    .line 771
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnContMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnEnhaLayer="

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnEnhaQuantMode="

    .line 773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->hilnEnhaQuantMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
