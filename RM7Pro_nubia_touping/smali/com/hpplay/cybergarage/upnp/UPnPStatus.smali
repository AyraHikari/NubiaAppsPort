.class public Lcom/hpplay/cybergarage/upnp/UPnPStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_FAILED:I = 0x1f5

.field public static final INVALID_ACTION:I = 0x191

.field public static final INVALID_ARGS:I = 0x192

.field public static final INVALID_VAR:I = 0x194

.field public static final OUT_OF_SYNC:I = 0x193

.field public static final PRECONDITION_FAILED:I = 0x19c


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->setCode(I)V

    .line 62
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->setDescription(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->setCode(I)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->setDescription(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static final code2String(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sparse-switch p0, :sswitch_data_0

    .line 49
    invoke-static {p0}, Lcom/hpplay/cybergarage/http/HTTPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 37
    :sswitch_0
    const-string v0, "Invalid Action"

    goto :goto_0

    .line 39
    :sswitch_1
    const-string v0, "Invalid Args"

    goto :goto_0

    .line 41
    :sswitch_2
    const-string v0, "Out of Sync"

    goto :goto_0

    .line 43
    :sswitch_3
    const-string v0, "Invalid Var"

    goto :goto_0

    .line 45
    :sswitch_4
    const-string v0, "Precondition Failed"

    goto :goto_0

    .line 47
    :sswitch_5
    const-string v0, "Action Failed"

    goto :goto_0

    .line 35
    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x192 -> :sswitch_1
        0x193 -> :sswitch_2
        0x194 -> :sswitch_3
        0x19c -> :sswitch_4
        0x1f5 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->description:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->code:I

    .line 76
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->description:Ljava/lang/String;

    .line 84
    return-void
.end method
