.class public Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final LINES_1:I = 0x1

.field public static final LINES_10:I = 0xa

.field public static final LINES_2:I = 0x2

.field public static final LINES_3:I = 0x3

.field public static final LINES_4:I = 0x4

.field public static final LINES_5:I = 0x5

.field public static final LINES_6:I = 0x6

.field public static final LINES_7:I = 0x7

.field public static final LINES_8:I = 0x8

.field public static final LINES_9:I = 0x9

.field public static final SPEED_1:F = 1.5f

.field public static final SPEED_10:F = 0.1f

.field public static final SPEED_2:F = 1.3f

.field public static final SPEED_3:F = 1.1f

.field public static final SPEED_4:F = 0.9f

.field public static final SPEED_5:F = 0.7f

.field public static final SPEED_6:F = 0.5f

.field public static final SPEED_7:F = 0.4f

.field public static final SPEED_8:F = 0.3f

.field public static final SPEED_9:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "DanmakuPropertyBean"


# instance fields
.field private lineSpace:I

.field private lines:I

.field private padding:I

.field private rowSpace:I

.field private speed:F

.field private swch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean$1;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean$1;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->swch:Z

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->padding:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->lines:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->rowSpace:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->lineSpace:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->speed:F

    .line 50
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public setLineSpace(I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->lineSpace:I

    .line 93
    return-void
.end method

.method public setLines(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->lines:I

    .line 85
    return-void
.end method

.method public setPadding(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->padding:I

    .line 81
    return-void
.end method

.method public setRowSpace(I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->rowSpace:I

    .line 89
    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->speed:F

    .line 73
    return-void
.end method

.method public setSwitch(Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->swch:Z

    .line 77
    return-void
.end method

.method public toJson(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 98
    :try_start_0
    const-string v1, "manifestVer"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    const-string v1, "swch"

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->swch:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 100
    const-string v1, "padding"

    iget v2, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->padding:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string v1, "speed"

    iget v2, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->speed:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 102
    const-string v1, "lines"

    iget v2, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->lines:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    const-string v1, "rowSpace"

    iget v2, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->rowSpace:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    const-string v1, "lineSpace"

    iget v2, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->lineSpace:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    const-string v1, "DanmakuPropertyBean"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v1, "DanmakuPropertyBean"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->swch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 63
    iget v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->padding:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->lines:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->rowSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->lineSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;->speed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 68
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
