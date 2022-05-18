.class public Lcn/nubia/touping/Utils/hdmi/HdmiUtil;
.super Ljava/lang/Object;
.source "HdmiUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/Utils/hdmi/HdmiUtil$OnHdmiPluggedChangedListener;
    }
.end annotation


# static fields
.field public static final HDMI_EDID_PATH:Ljava/lang/String; = "/sys/kernel/lcd_enhance/edid_modes"

.field public static final HDMI_HPD_PATH:Ljava/lang/String; = "/sys/kernel/lcd_enhance/hpd"

.field public static final HDMI_NODE_PATH:Ljava/lang/String; = "sys/devices/platform/soc/soc:nubia_usb_switch_dp_gpio_ctrl/enable"

.field public static final SCREEN_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final SCREEN_ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"

.field private static final TAG:Ljava/lang/String; = "[HdmiUtil]"

.field private static sInstance:Lcn/nubia/touping/Utils/hdmi/HdmiUtil;


# instance fields
.field private mHdmiPluggedChangedListener:Lcn/nubia/touping/Utils/hdmi/HdmiUtil$OnHdmiPluggedChangedListener;

.field private mIsPlugged:Z

.field private mLastNode:Lcn/nubia/touping/Utils/hdmi/HdmiNode;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->mLastNode:Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->mIsPlugged:Z

    .line 32
    return-void
.end method

.method public static getsInstance()Lcn/nubia/touping/Utils/hdmi/HdmiUtil;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->sInstance:Lcn/nubia/touping/Utils/hdmi/HdmiUtil;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;

    invoke-direct {v0}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;-><init>()V

    sput-object v0, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->sInstance:Lcn/nubia/touping/Utils/hdmi/HdmiUtil;

    .line 38
    :cond_0
    sget-object v0, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->sInstance:Lcn/nubia/touping/Utils/hdmi/HdmiUtil;

    return-object v0
.end method


# virtual methods
.method public getLastNode()Lcn/nubia/touping/Utils/hdmi/HdmiNode;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->mLastNode:Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    return-object v0
.end method

.method public isHdmiPlugged()Z
    .locals 9

    .prologue
    .line 121
    new-instance v2, Ljava/io/File;

    const-string v6, "sys/devices/platform/soc/soc:nubia_usb_switch_dp_gpio_ctrl/enable"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 124
    .local v3, "reader":Ljava/io/FileReader;
    const/4 v6, 0x1

    new-array v0, v6, [C

    .line 125
    .local v0, "buffer":[C
    invoke-virtual {v3, v0}, Ljava/io/FileReader;->read([C)I

    move-result v6

    if-lez v6, :cond_0

    .line 126
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    .line 127
    .local v5, "result":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 128
    .local v4, "res":Z
    const-string v6, "[HdmiUtil]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isHdmiPlugged() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    .end local v0    # "buffer":[C
    .end local v3    # "reader":Ljava/io/FileReader;
    .end local v4    # "res":Z
    .end local v5    # "result":Ljava/lang/String;
    :goto_0
    return v4

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v6, "[HdmiUtil]"

    const-string v7, "FileNotFoundException"

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 138
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 134
    :catch_1
    move-exception v1

    .line 135
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "[HdmiUtil]"

    const-string v7, "IOException"

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public isPortrait(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    const-string v1, "persist.sys.nubia.hdmirotation"

    invoke-static {p1, v1}, Lcn/nubia/touping/Utils/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "result":Ljava/lang/String;
    const-string v1, "[HdmiUtil]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPortrait() hdmi rotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public onHdmiPluggedChanged(Z)V
    .locals 1
    .param p1, "plugged"    # Z

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->mLastNode:Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    .line 149
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->mHdmiPluggedChangedListener:Lcn/nubia/touping/Utils/hdmi/HdmiUtil$OnHdmiPluggedChangedListener;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->mHdmiPluggedChangedListener:Lcn/nubia/touping/Utils/hdmi/HdmiUtil$OnHdmiPluggedChangedListener;

    invoke-interface {v0, p1}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil$OnHdmiPluggedChangedListener;->onHdmiPluggedChanged(Z)V

    .line 152
    :cond_1
    return-void
.end method

.method public readNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "/sys/kernel/lcd_enhance/edid_modes"

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->readNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 48
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 49
    .local v6, "is":Ljava/io/InputStreamReader;
    const/4 v4, 0x0

    .line 51
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    .end local v6    # "is":Ljava/io/InputStreamReader;
    .local v7, "is":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 54
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 55
    .local v8, "s":Ljava/lang/String;
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 57
    const-string v9, "\n"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 63
    :catch_0
    move-exception v3

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStreamReader;
    .restart local v6    # "is":Ljava/io/InputStreamReader;
    move-object v0, v1

    .line 64
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v8    # "s":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    const-string v9, "[HdmiUtil]"

    const-string v10, "FileNotFoundException"

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    if-eqz v4, :cond_1

    .line 72
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 74
    :cond_1
    if-eqz v6, :cond_2

    .line 75
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 77
    :cond_2
    if-eqz v0, :cond_3

    .line 78
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 84
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 71
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "is":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/InputStreamReader;
    .restart local v8    # "s":Ljava/lang/String;
    :cond_4
    if-eqz v5, :cond_5

    .line 72
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 74
    :cond_5
    if-eqz v7, :cond_6

    .line 75
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 77
    :cond_6
    if-eqz v1, :cond_7

    .line 78
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_7
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStreamReader;
    .restart local v6    # "is":Ljava/io/InputStreamReader;
    move-object v0, v1

    .line 82
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 80
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "is":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v3

    .line 81
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStreamReader;
    .restart local v6    # "is":Ljava/io/InputStreamReader;
    move-object v0, v1

    .line 83
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 80
    .end local v8    # "s":Ljava/lang/String;
    .local v3, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 81
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 66
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 67
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v9, "[HdmiUtil]"

    const-string v10, "IOException"

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 71
    if-eqz v4, :cond_8

    .line 72
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 74
    :cond_8
    if-eqz v6, :cond_9

    .line 75
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 77
    :cond_9
    if-eqz v0, :cond_3

    .line 78
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 80
    :catch_4
    move-exception v3

    .line 81
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 70
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 71
    :goto_4
    if-eqz v4, :cond_a

    .line 72
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 74
    :cond_a
    if-eqz v6, :cond_b

    .line 75
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 77
    :cond_b
    if-eqz v0, :cond_c

    .line 78
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 82
    :cond_c
    :goto_5
    throw v9

    .line 80
    :catch_5
    move-exception v3

    .line 81
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 70
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "is":Ljava/io/InputStreamReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStreamReader;
    .restart local v6    # "is":Ljava/io/InputStreamReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "is":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/InputStreamReader;
    .restart local v8    # "s":Ljava/lang/String;
    :catchall_3
    move-exception v9

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStreamReader;
    .restart local v6    # "is":Ljava/io/InputStreamReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 66
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "s":Ljava/lang/String;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v3

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "is":Ljava/io/InputStreamReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/InputStreamReader;
    :catch_7
    move-exception v3

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStreamReader;
    .restart local v6    # "is":Ljava/io/InputStreamReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "is":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/InputStreamReader;
    .restart local v8    # "s":Ljava/lang/String;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStreamReader;
    .restart local v6    # "is":Ljava/io/InputStreamReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 63
    .end local v8    # "s":Ljava/lang/String;
    :catch_9
    move-exception v3

    goto/16 :goto_1

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_a
    move-exception v3

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "is":Ljava/io/InputStreamReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/InputStreamReader;
    :catch_b
    move-exception v3

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStreamReader;
    .restart local v6    # "is":Ljava/io/InputStreamReader;
    goto/16 :goto_1
.end method

.method public setLastNode(Lcn/nubia/touping/Utils/hdmi/HdmiNode;)V
    .locals 0
    .param p1, "lastNode"    # Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    .prologue
    .line 113
    iput-object p1, p0, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->mLastNode:Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    .line 114
    return-void
.end method

.method public setOnHdmiPluggedChangedListener(Lcn/nubia/touping/Utils/hdmi/HdmiUtil$OnHdmiPluggedChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/touping/Utils/hdmi/HdmiUtil$OnHdmiPluggedChangedListener;

    .prologue
    .line 142
    iput-object p1, p0, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->mHdmiPluggedChangedListener:Lcn/nubia/touping/Utils/hdmi/HdmiUtil$OnHdmiPluggedChangedListener;

    .line 143
    return-void
.end method

.method public writeNode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 88
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v4

    .line 92
    :cond_1
    const-string v5, "[HdmiUtil]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeNode() content: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v2, 0x0

    .line 95
    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v2    # "writer":Ljava/io/FileWriter;
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    const/4 v4, 0x1

    .line 102
    if-eqz v3, :cond_0

    .line 103
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "[HdmiUtil]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeNode() finally : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    .line 99
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "[HdmiUtil]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeNode() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    if-eqz v2, :cond_0

    .line 103
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 105
    :catch_2
    move-exception v0

    .line 106
    const-string v5, "[HdmiUtil]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeNode() finally : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 102
    :goto_2
    if-eqz v2, :cond_2

    .line 103
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 107
    :cond_2
    :goto_3
    throw v4

    .line 105
    :catch_3
    move-exception v0

    .line 106
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "[HdmiUtil]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeNode() finally : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 98
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_1
.end method
