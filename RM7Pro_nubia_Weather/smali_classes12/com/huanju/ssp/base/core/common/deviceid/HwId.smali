.class Lcom/huanju/ssp/base/core/common/deviceid/HwId;
.super Ljava/lang/Object;
.source "HwId.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwId"

.field private static sCA:Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->sCA:Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addMID(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "did"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "imeis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "meids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/huanju/ssp/base/core/common/deviceid/IdCodecer;->allZeros(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 117
    :pswitch_0
    const-string v0, "HwId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid mobile id format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 94
    :pswitch_1
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :pswitch_2
    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :pswitch_3
    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static getSerial()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v4, 0x0

    .line 70
    const-class v1, Landroid/os/Build;

    .line 71
    .local v1, "kBuild":Ljava/lang/Class;
    sget-object v0, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->sCA:Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;

    const-string v2, "MANUFACTURER"

    invoke-virtual {v0, v1, v1, v2}, Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 72
    .local v11, "manufacturer":Ljava/lang/String;
    sget-object v0, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->sCA:Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;

    const-string v2, "MODEL"

    invoke-virtual {v0, v1, v1, v2}, Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 77
    .local v12, "model":Ljava/lang/String;
    sget-object v0, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->sCA:Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;

    const-string v3, "getSerial"

    move-object v2, v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 78
    .local v13, "sn":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->sCA:Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;

    const-string v2, "android.os.SystemProperties"

    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 80
    .local v6, "kSP":Ljava/lang/Class;
    sget-object v5, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->sCA:Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;

    const-string v8, "get"

    const-class v9, Ljava/lang/String;

    const-string v10, "ro.serialno"

    move-object v7, v6

    invoke-virtual/range {v5 .. v10}, Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "sn":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 82
    .end local v6    # "kSP":Ljava/lang/Class;
    .restart local v13    # "sn":Ljava/lang/String;
    :cond_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    :cond_1
    return-object v4
.end method

.method static getTelephonyIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .param p0, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "imeis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "meids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_5

    .line 20
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 21
    .local v1, "kTM":Ljava/lang/Class;
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 22
    .local v2, "tm":Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 24
    const/4 v10, 0x1

    .line 25
    .local v10, "nSlots":I
    sget-object v0, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->sCA:Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;

    const-string v3, "getPhoneCount"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 26
    .local v11, "oi":Ljava/lang/Integer;
    if-eqz v11, :cond_0

    .line 27
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 28
    const/4 v0, 0x1

    if-ge v10, v0, :cond_0

    .line 29
    const/4 v10, 0x1

    .line 34
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_1

    .line 35
    sget-object v0, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->sCA:Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;

    const-string v3, "getImei"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 36
    .local v8, "imei":Ljava/lang/String;
    invoke-static {v8, p1, p2}, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->addMID(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 34
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 38
    .end local v8    # "imei":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->sCA:Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;

    const-string v3, "getImei"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 39
    .restart local v8    # "imei":Ljava/lang/String;
    invoke-static {v8, p1, p2}, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->addMID(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 42
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_2

    .line 43
    sget-object v0, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->sCA:Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;

    const-string v3, "getMeid"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 44
    .local v9, "meid":Ljava/lang/String;
    invoke-static {v9, p1, p2}, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->addMID(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 42
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 46
    .end local v9    # "meid":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->sCA:Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;

    const-string v3, "getMeid"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 47
    .restart local v9    # "meid":Ljava/lang/String;
    invoke-static {v9, p1, p2}, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->addMID(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 50
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_3

    .line 51
    sget-object v0, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->sCA:Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;

    const-string v3, "getDeviceId"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 52
    .local v6, "did":Ljava/lang/String;
    invoke-static {v6, p1, p2}, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->addMID(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 50
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 54
    .end local v6    # "did":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->sCA:Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;

    const-string v3, "getDeviceId"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/core/common/deviceid/ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 55
    .restart local v6    # "did":Ljava/lang/String;
    invoke-static {v6, p1, p2}, Lcom/huanju/ssp/base/core/common/deviceid/HwId;->addMID(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 58
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_4

    .line 59
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 61
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_5

    .line 62
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 66
    .end local v1    # "kTM":Ljava/lang/Class;
    .end local v2    # "tm":Ljava/lang/Object;
    .end local v6    # "did":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "imei":Ljava/lang/String;
    .end local v9    # "meid":Ljava/lang/String;
    .end local v10    # "nSlots":I
    .end local v11    # "oi":Ljava/lang/Integer;
    :cond_5
    return-void
.end method
