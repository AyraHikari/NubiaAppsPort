.class Lcom/nubia/reyun/deviceid/HwId;
.super Ljava/lang/Object;
.source "HwId.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwId"

.field private static sCA:Lcom/nubia/reyun/deviceid/ClassAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/nubia/reyun/deviceid/ClassAccessor;

    invoke-direct {v0}, Lcom/nubia/reyun/deviceid/ClassAccessor;-><init>()V

    sput-object v0, Lcom/nubia/reyun/deviceid/HwId;->sCA:Lcom/nubia/reyun/deviceid/ClassAccessor;

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
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/nubia/reyun/deviceid/IdCodecer;->allZeros(Ljava/lang/String;)Z

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

    const-string v2, "invalid mobile id format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 70
    const-class v1, Landroid/os/Build;

    .line 71
    sget-object v0, Lcom/nubia/reyun/deviceid/HwId;->sCA:Lcom/nubia/reyun/deviceid/ClassAccessor;

    const-string v2, "MANUFACTURER"

    invoke-virtual {v0, v1, v1, v2}, Lcom/nubia/reyun/deviceid/ClassAccessor;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/nubia/reyun/deviceid/HwId;->sCA:Lcom/nubia/reyun/deviceid/ClassAccessor;

    const-string v2, "MODEL"

    invoke-virtual {v0, v1, v1, v2}, Lcom/nubia/reyun/deviceid/ClassAccessor;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/nubia/reyun/deviceid/HwId;->sCA:Lcom/nubia/reyun/deviceid/ClassAccessor;

    const-string v3, "getSerial"

    move-object v2, v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nubia/reyun/deviceid/ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    sget-object v0, Lcom/nubia/reyun/deviceid/HwId;->sCA:Lcom/nubia/reyun/deviceid/ClassAccessor;

    const-string v1, "android.os.SystemProperties"

    invoke-virtual {v0, v1}, Lcom/nubia/reyun/deviceid/ClassAccessor;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 80
    sget-object v5, Lcom/nubia/reyun/deviceid/HwId;->sCA:Lcom/nubia/reyun/deviceid/ClassAccessor;

    const-string v8, "get"

    const-class v9, Ljava/lang/String;

    const-string v10, "ro.serialno"

    move-object v7, v6

    invoke-virtual/range {v5 .. v10}, Lcom/nubia/reyun/deviceid/ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    :cond_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    :cond_1
    return-object v4
.end method

.method static getTelephonyIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
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
    if-eqz p0, :cond_2

    .line 20
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 21
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 22
    if-eqz v2, :cond_2

    .line 24
    const/4 v6, 0x1

    .line 25
    sget-object v0, Lcom/nubia/reyun/deviceid/HwId;->sCA:Lcom/nubia/reyun/deviceid/ClassAccessor;

    const-string v3, "getPhoneCount"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nubia/reyun/deviceid/ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 26
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 28
    const/4 v3, 0x1

    if-ge v0, v3, :cond_6

    .line 29
    const/4 v0, 0x1

    move v6, v0

    .line 34
    :cond_0
    :goto_0
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-lt v7, v6, :cond_3

    .line 38
    sget-object v0, Lcom/nubia/reyun/deviceid/HwId;->sCA:Lcom/nubia/reyun/deviceid/ClassAccessor;

    const-string v3, "getImei"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nubia/reyun/deviceid/ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    invoke-static {v0, p1, p2}, Lcom/nubia/reyun/deviceid/HwId;->addMID(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 42
    const/4 v0, 0x0

    move v7, v0

    :goto_2
    if-lt v7, v6, :cond_4

    .line 46
    sget-object v0, Lcom/nubia/reyun/deviceid/HwId;->sCA:Lcom/nubia/reyun/deviceid/ClassAccessor;

    const-string v3, "getMeid"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nubia/reyun/deviceid/ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-static {v0, p1, p2}, Lcom/nubia/reyun/deviceid/HwId;->addMID(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 50
    const/4 v0, 0x0

    move v7, v0

    :goto_3
    if-lt v7, v6, :cond_5

    .line 54
    sget-object v0, Lcom/nubia/reyun/deviceid/HwId;->sCA:Lcom/nubia/reyun/deviceid/ClassAccessor;

    const-string v3, "getDeviceId"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nubia/reyun/deviceid/ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    invoke-static {v0, p1, p2}, Lcom/nubia/reyun/deviceid/HwId;->addMID(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 58
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 59
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 61
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 62
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 66
    :cond_2
    return-void

    .line 35
    :cond_3
    sget-object v0, Lcom/nubia/reyun/deviceid/HwId;->sCA:Lcom/nubia/reyun/deviceid/ClassAccessor;

    const-string v3, "getImei"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nubia/reyun/deviceid/ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    invoke-static {v0, p1, p2}, Lcom/nubia/reyun/deviceid/HwId;->addMID(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 34
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 43
    :cond_4
    sget-object v0, Lcom/nubia/reyun/deviceid/HwId;->sCA:Lcom/nubia/reyun/deviceid/ClassAccessor;

    const-string v3, "getMeid"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nubia/reyun/deviceid/ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    invoke-static {v0, p1, p2}, Lcom/nubia/reyun/deviceid/HwId;->addMID(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 42
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    .line 51
    :cond_5
    sget-object v0, Lcom/nubia/reyun/deviceid/HwId;->sCA:Lcom/nubia/reyun/deviceid/ClassAccessor;

    const-string v3, "getDeviceId"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nubia/reyun/deviceid/ClassAccessor;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    invoke-static {v0, p1, p2}, Lcom/nubia/reyun/deviceid/HwId;->addMID(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 50
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    :cond_6
    move v6, v0

    goto/16 :goto_0
.end method
