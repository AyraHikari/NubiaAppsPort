.class public Lcn/nubia/touping/TouPingApplication;
.super Landroid/app/Application;
.source "TouPingApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "TouPingApplication"

.field public static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/TouPingApplication;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/TouPingApplication;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcn/nubia/touping/TouPingApplication;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/touping/TouPingApplication;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/TouPingApplication;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcn/nubia/touping/TouPingApplication;->getAllThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/touping/TouPingApplication;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/TouPingApplication;

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/nubia/touping/TouPingApplication;->getAllThreadALL()V

    return-void
.end method

.method private getAllThread(Ljava/lang/String;)V
    .locals 18
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    const-string v15, "TouPingApplication"

    const-string v16, "changlei888999 num = 1"

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v6, "proc/self/task/"

    .line 79
    .local v6, "filepath":Ljava/lang/String;
    const-string v15, "TouPingApplication"

    const-string v16, "changlei888999 num = 2"

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v3, "file":Ljava/io/File;
    const-string v15, "TouPingApplication"

    const-string v16, "changlei888999 num = 3"

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    array-length v10, v15

    .line 83
    .local v10, "num":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_6

    .line 84
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    aget-object v5, v15, v8

    .line 85
    .local v5, "fileThread":Ljava/io/File;
    const-string v15, "TouPingApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changlei888999 name = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-nez v15, :cond_1

    .line 83
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    array-length v11, v15

    .line 88
    .local v11, "numThread":I
    const-string v15, "TouPingApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changlei888999 file.listFiles()[i].getName() = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    aget-object v17, v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v7, 0x0

    .line 90
    .local v7, "flag":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v11, :cond_5

    .line 91
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    aget-object v4, v15, v9

    .line 92
    .local v4, "file1":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v15

    if-nez v15, :cond_3

    .line 90
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    const-string v15, "comm"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 94
    const-string v13, ""

    .line 95
    .local v13, "result":Ljava/lang/String;
    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 96
    .local v12, "reader":Ljava/io/FileReader;
    const/16 v15, 0x64

    new-array v1, v15, [C

    .line 97
    .local v1, "buffer":[C
    invoke-virtual {v12, v1}, Ljava/io/FileReader;->read([C)I

    move-result v15

    if-lez v15, :cond_4

    .line 98
    new-instance v13, Ljava/lang/String;

    .end local v13    # "result":Ljava/lang/String;
    invoke-direct {v13, v1}, Ljava/lang/String;-><init>([C)V

    .line 100
    .restart local v13    # "result":Ljava/lang/String;
    :cond_4
    const-string v15, "TouPingApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changlei888999 result = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz v13, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 102
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 103
    .local v14, "tid":I
    const-string v15, "TouPingApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changlei888999 set tid = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcn/nubia/touping/TouPingApplication;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const/4 v7, 0x1

    .line 110
    .end local v1    # "buffer":[C
    .end local v4    # "file1":Ljava/io/File;
    .end local v12    # "reader":Ljava/io/FileReader;
    .end local v13    # "result":Ljava/lang/String;
    .end local v14    # "tid":I
    :cond_5
    if-eqz v7, :cond_0

    .line 118
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fileThread":Ljava/io/File;
    .end local v6    # "filepath":Ljava/lang/String;
    .end local v7    # "flag":Z
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v10    # "num":I
    .end local v11    # "numThread":I
    :cond_6
    :goto_2
    return-void

    .line 114
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const-string v15, "TouPingApplication"

    const-string v16, "changlei888999 result = exception"

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getAllThreadALL()V
    .locals 18

    .prologue
    .line 215
    :try_start_0
    const-string v15, "TouPingApplication"

    const-string v16, "changlei888999 num = 1"

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v6, "proc/self/task/"

    .line 217
    .local v6, "filepath":Ljava/lang/String;
    const-string v15, "TouPingApplication"

    const-string v16, "changlei888999 num = 2"

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v3, "file":Ljava/io/File;
    const-string v15, "TouPingApplication"

    const-string v16, "changlei888999 num = 3"

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    array-length v10, v15

    .line 221
    .local v10, "num":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_5

    .line 222
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    aget-object v5, v15, v8

    .line 223
    .local v5, "fileThread":Ljava/io/File;
    const-string v15, "TouPingApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changlei888999 name = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-nez v15, :cond_1

    .line 221
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    array-length v11, v15

    .line 226
    .local v11, "numThread":I
    const-string v15, "TouPingApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changlei888999 file.listFiles()[i].getName() = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    aget-object v17, v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v7, 0x0

    .line 228
    .local v7, "flag":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v11, :cond_0

    .line 229
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    aget-object v4, v15, v9

    .line 230
    .local v4, "file1":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v15

    if-nez v15, :cond_3

    .line 228
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 231
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    const-string v15, "comm"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 232
    const-string v13, ""

    .line 233
    .local v13, "result":Ljava/lang/String;
    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 234
    .local v12, "reader":Ljava/io/FileReader;
    const/16 v15, 0x64

    new-array v1, v15, [C

    .line 235
    .local v1, "buffer":[C
    invoke-virtual {v12, v1}, Ljava/io/FileReader;->read([C)I

    move-result v15

    if-lez v15, :cond_4

    .line 236
    new-instance v13, Ljava/lang/String;

    .end local v13    # "result":Ljava/lang/String;
    invoke-direct {v13, v1}, Ljava/lang/String;-><init>([C)V

    .line 238
    .restart local v13    # "result":Ljava/lang/String;
    :cond_4
    const-string v15, "TouPingApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changleitestall result = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 240
    .local v14, "tid":I
    const-string v15, "TouPingApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changleitestall set UI tid = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcn/nubia/touping/TouPingApplication;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 245
    .end local v1    # "buffer":[C
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "file1":Ljava/io/File;
    .end local v5    # "fileThread":Ljava/io/File;
    .end local v6    # "filepath":Ljava/lang/String;
    .end local v7    # "flag":Z
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v10    # "num":I
    .end local v11    # "numThread":I
    .end local v12    # "reader":Ljava/io/FileReader;
    .end local v13    # "result":Ljava/lang/String;
    .end local v14    # "tid":I
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    const-string v15, "TouPingApplication"

    const-string v16, "changlei888999 result = exception"

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    return-void
.end method

.method private getAllThreadEncode(Ljava/lang/String;)V
    .locals 18
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 169
    :try_start_0
    const-string v15, "TouPingApplication"

    const-string v16, "changlei888999 num = 1"

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v6, "proc/self/task/"

    .line 171
    .local v6, "filepath":Ljava/lang/String;
    const-string v15, "TouPingApplication"

    const-string v16, "changlei888999 num = 2"

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v3, "file":Ljava/io/File;
    const-string v15, "TouPingApplication"

    const-string v16, "changlei888999 num = 3"

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    array-length v10, v15

    .line 175
    .local v10, "num":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_6

    .line 176
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    aget-object v5, v15, v8

    .line 177
    .local v5, "fileThread":Ljava/io/File;
    const-string v15, "TouPingApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changlei888999 name = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-nez v15, :cond_1

    .line 175
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    array-length v11, v15

    .line 180
    .local v11, "numThread":I
    const-string v15, "TouPingApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changlei888999 file.listFiles()[i].getName() = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    aget-object v17, v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v7, 0x0

    .line 182
    .local v7, "flag":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v11, :cond_5

    .line 183
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    aget-object v4, v15, v9

    .line 184
    .local v4, "file1":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v15

    if-nez v15, :cond_3

    .line 182
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 185
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    const-string v15, "comm"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 186
    const-string v13, ""

    .line 187
    .local v13, "result":Ljava/lang/String;
    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 188
    .local v12, "reader":Ljava/io/FileReader;
    const/16 v15, 0x64

    new-array v1, v15, [C

    .line 189
    .local v1, "buffer":[C
    invoke-virtual {v12, v1}, Ljava/io/FileReader;->read([C)I

    move-result v15

    if-lez v15, :cond_4

    .line 190
    new-instance v13, Ljava/lang/String;

    .end local v13    # "result":Ljava/lang/String;
    invoke-direct {v13, v1}, Ljava/lang/String;-><init>([C)V

    .line 192
    .restart local v13    # "result":Ljava/lang/String;
    :cond_4
    const-string v15, "TouPingApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changlei888999 result = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    if-eqz v13, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 194
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 195
    .local v14, "tid":I
    const-string v15, "TouPingApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changlei888999 set UI tid = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcn/nubia/touping/TouPingApplication;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    const/4 v7, 0x1

    .line 202
    .end local v1    # "buffer":[C
    .end local v4    # "file1":Ljava/io/File;
    .end local v12    # "reader":Ljava/io/FileReader;
    .end local v13    # "result":Ljava/lang/String;
    .end local v14    # "tid":I
    :cond_5
    if-eqz v7, :cond_0

    .line 210
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fileThread":Ljava/io/File;
    .end local v6    # "filepath":Ljava/lang/String;
    .end local v7    # "flag":Z
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v10    # "num":I
    .end local v11    # "numThread":I
    :cond_6
    :goto_2
    return-void

    .line 206
    :catch_0
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    const-string v15, "TouPingApplication"

    const-string v16, "changlei888999 result = exception"

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getAllThreadUi(Ljava/lang/String;)V
    .locals 18
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 123
    :try_start_0
    const-string v15, "TouPingApplication"

    const-string v16, "changlei888999 num = 1"

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v6, "proc/self/task/"

    .line 125
    .local v6, "filepath":Ljava/lang/String;
    const-string v15, "TouPingApplication"

    const-string v16, "changlei888999 num = 2"

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v3, "file":Ljava/io/File;
    const-string v15, "TouPingApplication"

    const-string v16, "changlei888999 num = 3"

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    array-length v10, v15

    .line 129
    .local v10, "num":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_6

    .line 130
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    aget-object v5, v15, v8

    .line 131
    .local v5, "fileThread":Ljava/io/File;
    const-string v15, "TouPingApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changlei888999 name = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-nez v15, :cond_1

    .line 129
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    array-length v11, v15

    .line 134
    .local v11, "numThread":I
    const-string v15, "TouPingApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changlei888999 file.listFiles()[i].getName() = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    aget-object v17, v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v7, 0x0

    .line 136
    .local v7, "flag":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v11, :cond_5

    .line 137
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    aget-object v4, v15, v9

    .line 138
    .local v4, "file1":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v15

    if-nez v15, :cond_3

    .line 136
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    const-string v15, "comm"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 140
    const-string v13, ""

    .line 141
    .local v13, "result":Ljava/lang/String;
    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 142
    .local v12, "reader":Ljava/io/FileReader;
    const/16 v15, 0x64

    new-array v1, v15, [C

    .line 143
    .local v1, "buffer":[C
    invoke-virtual {v12, v1}, Ljava/io/FileReader;->read([C)I

    move-result v15

    if-lez v15, :cond_4

    .line 144
    new-instance v13, Ljava/lang/String;

    .end local v13    # "result":Ljava/lang/String;
    invoke-direct {v13, v1}, Ljava/lang/String;-><init>([C)V

    .line 146
    .restart local v13    # "result":Ljava/lang/String;
    :cond_4
    const-string v15, "TouPingApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changlei888999 result = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    if-eqz v13, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 148
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 149
    .local v14, "tid":I
    const-string v15, "TouPingApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changlei888999 set UI tid = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcn/nubia/touping/TouPingApplication;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    const/4 v7, 0x1

    .line 156
    .end local v1    # "buffer":[C
    .end local v4    # "file1":Ljava/io/File;
    .end local v12    # "reader":Ljava/io/FileReader;
    .end local v13    # "result":Ljava/lang/String;
    .end local v14    # "tid":I
    :cond_5
    if-eqz v7, :cond_0

    .line 164
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fileThread":Ljava/io/File;
    .end local v6    # "filepath":Ljava/lang/String;
    .end local v7    # "flag":Z
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v10    # "num":I
    .end local v11    # "numThread":I
    :cond_6
    :goto_2
    return-void

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    const-string v15, "TouPingApplication"

    const-string v16, "changlei888999 result = exception"

    invoke-static/range {v15 .. v16}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 312
    if-nez p1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-object v4

    .line 314
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 315
    .local v3, "pid":I
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 316
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 317
    .local v1, "appProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v3, :cond_2

    .line 318
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "appProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "pid":I
    :catch_0
    move-exception v2

    .line 322
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setThreadPriority(I)V
    .locals 3
    .param p1, "tid"    # I

    .prologue
    .line 254
    :try_start_0
    const-string v1, "TouPingApplication"

    const-string v2, "changlei888999 setThreadPriority start 111"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/16 v1, -0x10

    invoke-static {p1, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 256
    const-string v1, "TouPingApplication"

    const-string v2, "changlei888999 setThreadPriority start 222"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v1, "TouPingApplication"

    const-string v2, "changlei888999 setThreadPriority end  333"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unBindLeboSDK()V
    .locals 6

    .prologue
    .line 269
    invoke-direct {p0, p0}, Lcn/nubia/touping/TouPingApplication;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "currentProcessName":Ljava/lang/String;
    const-string v3, "TouPingApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentProcessName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    if-eqz v0, :cond_1

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 272
    .local v1, "flagProcessName":Z
    :goto_0
    if-nez v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcn/nubia/touping/TouPingApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/touping/Utils/CTAAgreementUtils;->getHASAGREECTAAGREEMENT(Landroid/content/Context;)Z

    move-result v2

    .line 274
    .local v2, "hasAgreeCTAAgreement":Z
    if-eqz v2, :cond_0

    .line 275
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->unbindLeBoSDK()V

    .line 278
    .end local v2    # "hasAgreeCTAAgreement":Z
    :cond_0
    return-void

    .line 271
    .end local v1    # "flagProcessName":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeThreadInfo()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/touping/TouPingApplication$1;

    invoke-direct {v1, p0}, Lcn/nubia/touping/TouPingApplication$1;-><init>(Lcn/nubia/touping/TouPingApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method

.method public changeThreadInfoAll()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/touping/TouPingApplication$2;

    invoke-direct {v1, p0}, Lcn/nubia/touping/TouPingApplication$2;-><init>(Lcn/nubia/touping/TouPingApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 72
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 30
    invoke-static {}, Lcn/nubia/touping/Utils/ThreadUtil;->create()V

    .line 31
    invoke-direct {p0, p0}, Lcn/nubia/touping/TouPingApplication;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "currentProcessName":Ljava/lang/String;
    const-string v3, "TouPingApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentProcessName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    if-eqz v0, :cond_1

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 34
    .local v1, "flagProcessName":Z
    :goto_0
    if-nez v1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcn/nubia/touping/TouPingApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/touping/Utils/CTAAgreementUtils;->getHASAGREECTAAGREEMENT(Landroid/content/Context;)Z

    move-result v2

    .line 36
    .local v2, "hasAgreeCTAAgreement":Z
    if-eqz v2, :cond_0

    .line 37
    invoke-static {p0}, Lcn/nubia/touping/Utils/LeBoOprate;->initLeBoSDK(Landroid/content/Context;)V

    .line 40
    .end local v2    # "hasAgreeCTAAgreement":Z
    :cond_0
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 42
    invoke-static {p0}, Lcn/nubia/touping/Utils/TrackUtils;->init(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->init(Landroid/content/Context;)V

    .line 44
    invoke-static {}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->getsInstance()Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcn/nubia/touping/Utils/RefreshRateControl/RefreshRateController;->init(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Lcn/nubia/touping/TouPingApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcn/nubia/touping/TouPingApplication;->sContext:Landroid/content/Context;

    .line 47
    return-void

    .line 33
    .end local v1    # "flagProcessName":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 307
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 309
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 299
    invoke-static {}, Lcn/nubia/touping/Utils/ThreadUtil;->release()V

    .line 300
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->release()V

    .line 303
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 282
    const-string v1, "TouPingApplication"

    const-string v2, "uncaughtException exception"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :try_start_0
    const-string v1, "TouPingApplication"

    const-string v2, "uncaughtException exception  0"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcn/nubia/touping/TouPingApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/touping/Utils/ExpandingsionModeUtil;->outExpandingSionModeForApplication(Landroid/content/Context;)V

    .line 286
    invoke-virtual {p0}, Lcn/nubia/touping/TouPingApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setLeBoLink(Landroid/content/Context;)V

    .line 287
    invoke-virtual {p0}, Lcn/nubia/touping/TouPingApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->stopMediaCodec(Landroid/content/Context;)V

    .line 288
    invoke-virtual {p0}, Lcn/nubia/touping/TouPingApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/SetSettingDataForGameCollecteDataUtils;->sendToupingStatus2Audio(Landroid/content/Context;Z)V

    .line 289
    const-string v1, "TouPingApplication"

    const-string v2, "uncaughtException exception  1"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    const-string v1, "TouPingApplication"

    const-string v2, "uncaughtException exception  2"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
