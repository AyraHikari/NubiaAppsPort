.class public Lcn/nubia/notepad/utils/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static final BUFF_SIZE:I = 0x100000

.field public static final CLOULD_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "notePad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cloudcache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/notepad/utils/FileHelper;->CLOULD_PATH:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0, "sourceFile"    # Ljava/lang/String;
    .param p1, "targetFile"    # Ljava/lang/String;

    .prologue
    .line 229
    new-instance v4, Ljava/io/File;

    sget-object v15, Lcn/nubia/notepad/utils/FileHelper;->CLOULD_PATH:Ljava/lang/String;

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v4, "filedir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 231
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 233
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcn/nubia/notepad/utils/FileHelper;->CLOULD_PATH:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "filePath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 236
    .local v7, "input":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 238
    .local v5, "inBuff":Ljava/io/BufferedInputStream;
    const/4 v12, 0x0

    .line 239
    .local v12, "output":Ljava/io/FileOutputStream;
    const/4 v10, 0x0

    .line 240
    .local v10, "outBuff":Ljava/io/BufferedOutputStream;
    const/4 v14, 0x0

    .line 242
    .local v14, "success":Z
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .end local v7    # "input":Ljava/io/FileInputStream;
    .local v8, "input":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .local v6, "inBuff":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 246
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .local v13, "output":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v11, Ljava/io/BufferedOutputStream;

    invoke-direct {v11, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 248
    .end local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    .local v11, "outBuff":Ljava/io/BufferedOutputStream;
    const/16 v15, 0x1400

    :try_start_4
    new-array v1, v15, [B

    .line 250
    .local v1, "b":[B
    :goto_0
    invoke-virtual {v6, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    .local v9, "len":I
    const/4 v15, -0x1

    if-eq v9, v15, :cond_5

    .line 251
    const/4 v15, 0x0

    invoke-virtual {v11, v1, v15, v9}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_0

    .line 256
    .end local v1    # "b":[B
    .end local v9    # "len":I
    :catch_0
    move-exception v2

    move-object v10, v11

    .end local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 257
    .end local v8    # "input":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 258
    const/4 v14, 0x0

    .line 264
    if-eqz v5, :cond_1

    .line 265
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 266
    const/4 v5, 0x0

    .line 268
    :cond_1
    if-eqz v10, :cond_2

    .line 269
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    .line 270
    const/4 v10, 0x0

    .line 272
    :cond_2
    if-eqz v12, :cond_3

    .line 273
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 274
    const/4 v12, 0x0

    .line 276
    :cond_3
    if-eqz v7, :cond_4

    .line 277
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 278
    const/4 v7, 0x0

    .line 284
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_2
    return-object v3

    .line 253
    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "b":[B
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    .restart local v9    # "len":I
    .restart local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :cond_5
    :try_start_7
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 254
    const/4 v14, 0x1

    .line 264
    if-eqz v6, :cond_10

    .line 265
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 266
    const/4 v5, 0x0

    .line 268
    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    :goto_3
    if-eqz v11, :cond_f

    .line 269
    :try_start_9
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e

    .line 270
    const/4 v10, 0x0

    .line 272
    .end local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    :goto_4
    if-eqz v13, :cond_e

    .line 273
    :try_start_a
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f

    .line 274
    const/4 v12, 0x0

    .line 276
    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    :goto_5
    if-eqz v8, :cond_d

    .line 277
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10

    .line 278
    const/4 v7, 0x0

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto :goto_2

    .line 280
    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    move-object v10, v11

    .end local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 281
    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    :goto_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 283
    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto :goto_2

    .line 280
    .end local v1    # "b":[B
    .end local v9    # "len":I
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 281
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 259
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 260
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 261
    const/4 v14, 0x0

    .line 264
    if-eqz v5, :cond_6

    .line 265
    :try_start_d
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 266
    const/4 v5, 0x0

    .line 268
    :cond_6
    if-eqz v10, :cond_7

    .line 269
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    .line 270
    const/4 v10, 0x0

    .line 272
    :cond_7
    if-eqz v12, :cond_8

    .line 273
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 274
    const/4 v12, 0x0

    .line 276
    :cond_8
    if-eqz v7, :cond_4

    .line 277
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 278
    const/4 v7, 0x0

    goto :goto_2

    .line 280
    :catch_4
    move-exception v2

    .line 281
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 263
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    .line 264
    :goto_8
    if-eqz v5, :cond_9

    .line 265
    :try_start_e
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 266
    const/4 v5, 0x0

    .line 268
    :cond_9
    if-eqz v10, :cond_a

    .line 269
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    .line 270
    const/4 v10, 0x0

    .line 272
    :cond_a
    if-eqz v12, :cond_b

    .line 273
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 274
    const/4 v12, 0x0

    .line 276
    :cond_b
    if-eqz v7, :cond_c

    .line 277
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 278
    const/4 v7, 0x0

    .line 283
    :cond_c
    :goto_9
    throw v15

    .line 280
    :catch_5
    move-exception v2

    .line 281
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 263
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v15

    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto :goto_8

    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v15

    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto :goto_8

    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v15

    move-object v12, v13

    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto :goto_8

    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v15

    move-object v10, v11

    .end local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto :goto_8

    .line 259
    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v2

    move-object v12, v13

    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v2

    move-object v10, v11

    .end local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto :goto_7

    .line 256
    :catch_a
    move-exception v2

    goto/16 :goto_1

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    :catch_b
    move-exception v2

    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    :catch_c
    move-exception v2

    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :catch_d
    move-exception v2

    move-object v12, v13

    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 280
    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "b":[B
    .restart local v8    # "input":Ljava/io/FileInputStream;
    .restart local v9    # "len":I
    .restart local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :catch_e
    move-exception v2

    move-object v10, v11

    .end local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :catch_f
    move-exception v2

    move-object v12, v13

    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    :catch_10
    move-exception v2

    goto/16 :goto_6

    :cond_d
    move-object v7, v8

    .end local v8    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "input":Ljava/io/FileInputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :cond_e
    move-object v12, v13

    .end local v13    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .end local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v13    # "output":Ljava/io/FileOutputStream;
    :cond_f
    move-object v10, v11

    .end local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    goto/16 :goto_4

    .end local v5    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v10    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v11    # "outBuff":Ljava/io/BufferedOutputStream;
    :cond_10
    move-object v5, v6

    .end local v6    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "inBuff":Ljava/io/BufferedInputStream;
    goto/16 :goto_3
.end method

.method public static createDefaultFolders(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, "mPackageName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    .local v0, "mAppDataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, "mAppFilesDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v6, "user-0"

    invoke-direct {v4, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 298
    .local v4, "mAppFilesUserDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v6, "image"

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 299
    .local v2, "mAppFilesImageDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v6, "record"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 301
    .local v3, "mAppFilesRecordDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 302
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 305
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 306
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 309
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 310
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 313
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 314
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 317
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 318
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 320
    :cond_4
    return-void
.end method

.method public static deleteAll(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 323
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    .line 324
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 335
    :cond_1
    :goto_0
    return-void

    .line 326
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 327
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 328
    aget-object v2, v0, v1

    invoke-static {v2}, Lcn/nubia/notepad/utils/FileHelper;->deleteAll(Ljava/io/File;)V

    .line 329
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 331
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static unzip(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/StringBuffer;)Z
    .locals 12
    .param p0, "zipInput"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/File;
    .param p2, "content"    # Ljava/lang/StringBuffer;

    .prologue
    .line 160
    const/4 v4, 0x0

    .line 161
    .local v4, "in":Ljava/util/zip/ZipInputStream;
    const/4 v9, 0x0

    .line 163
    .local v9, "success":Z
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 164
    const/4 v10, 0x0

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p2, v10, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 166
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 167
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 169
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v10, "image"

    invoke-direct {v3, p1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 171
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 173
    :cond_2
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    const-string v10, "record"

    invoke-direct {v3, p1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 175
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 177
    :cond_3
    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local v4    # "in":Ljava/util/zip/ZipInputStream;
    .local v5, "in":Ljava/util/zip/ZipInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 179
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    :goto_0
    if-eqz v2, :cond_a

    .line 180
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 181
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, "name":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 183
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    invoke-direct {v3, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 202
    .end local v7    # "name":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    goto :goto_0

    .line 187
    :cond_5
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, p1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 189
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 192
    .local v8, "out":Ljava/io/FileOutputStream;
    const/16 v10, 0x1400

    new-array v0, v10, [B

    .line 193
    .local v0, "buff":[B
    :goto_2
    invoke-virtual {v5, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_8

    .line 194
    const/4 v10, 0x0

    invoke-virtual {v8, v0, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 205
    .end local v0    # "buff":[B
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "len":I
    .end local v8    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 206
    .end local v5    # "in":Ljava/util/zip/ZipInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "in":Ljava/util/zip/ZipInputStream;
    :goto_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    const/4 v9, 0x0

    .line 213
    if-eqz p0, :cond_6

    .line 214
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 215
    const/4 p0, 0x0

    .line 217
    :cond_6
    if-eqz v4, :cond_7

    .line 218
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 219
    const/4 v4, 0x0

    .line 225
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_7
    :goto_4
    return v9

    .line 196
    .end local v4    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "buff":[B
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "len":I
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    :cond_8
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 198
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 199
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 208
    .end local v0    # "buff":[B
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "len":I
    .end local v8    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v4, v5

    .line 209
    .end local v5    # "in":Ljava/util/zip/ZipInputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v4    # "in":Ljava/util/zip/ZipInputStream;
    :goto_5
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 210
    const/4 v9, 0x0

    .line 213
    if-eqz p0, :cond_9

    .line 214
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 215
    const/4 p0, 0x0

    .line 217
    :cond_9
    if-eqz v4, :cond_7

    .line 218
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 219
    const/4 v4, 0x0

    goto :goto_4

    .line 204
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "in":Ljava/util/zip/ZipInputStream;
    :cond_a
    const/4 v9, 0x1

    .line 213
    if-eqz p0, :cond_b

    .line 214
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 215
    const/4 p0, 0x0

    .line 217
    :cond_b
    if-eqz v5, :cond_e

    .line 218
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 219
    const/4 v4, 0x0

    .end local v5    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "in":Ljava/util/zip/ZipInputStream;
    goto :goto_4

    .line 221
    .end local v4    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "in":Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v1

    .line 222
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 224
    .end local v5    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "in":Ljava/util/zip/ZipInputStream;
    goto :goto_4

    .line 221
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "file":Ljava/io/File;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 222
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 221
    :catch_4
    move-exception v1

    .line 222
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 212
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 213
    :goto_6
    if-eqz p0, :cond_c

    .line 214
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 215
    const/4 p0, 0x0

    .line 217
    :cond_c
    if-eqz v4, :cond_d

    .line 218
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 219
    const/4 v4, 0x0

    .line 224
    :cond_d
    :goto_7
    throw v10

    .line 221
    :catch_5
    move-exception v1

    .line 222
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 212
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "in":Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "in":Ljava/util/zip/ZipInputStream;
    goto :goto_6

    .line 208
    :catch_6
    move-exception v1

    goto :goto_5

    .line 205
    :catch_7
    move-exception v1

    goto :goto_3

    .end local v4    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "in":Ljava/util/zip/ZipInputStream;
    :cond_e
    move-object v4, v5

    .end local v5    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "in":Ljava/util/zip/ZipInputStream;
    goto :goto_4
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "unzipPath"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/StringBuffer;

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, "fileStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 141
    .local v3, "success":Z
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .end local v1    # "fileStream":Ljava/io/InputStream;
    .local v2, "fileStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4, p2}, Lcn/nubia/notepad/utils/FileHelper;->unzip(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/StringBuffer;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 148
    if-eqz v2, :cond_2

    .line 149
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 150
    const/4 v1, 0x0

    .line 156
    .end local v2    # "fileStream":Ljava/io/InputStream;
    .restart local v1    # "fileStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return v3

    .line 152
    .end local v1    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "fileStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 155
    .end local v2    # "fileStream":Ljava/io/InputStream;
    .restart local v1    # "fileStream":Ljava/io/InputStream;
    goto :goto_0

    .line 143
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    const/4 v3, 0x0

    .line 148
    if-eqz v1, :cond_0

    .line 149
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 150
    const/4 v1, 0x0

    goto :goto_0

    .line 152
    :catch_2
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 148
    :goto_2
    if-eqz v1, :cond_1

    .line 149
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 150
    const/4 v1, 0x0

    .line 155
    :cond_1
    :goto_3
    throw v4

    .line 152
    :catch_3
    move-exception v0

    .line 153
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 147
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "fileStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fileStream":Ljava/io/InputStream;
    .restart local v1    # "fileStream":Ljava/io/InputStream;
    goto :goto_2

    .line 143
    .end local v1    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "fileStream":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileStream":Ljava/io/InputStream;
    .restart local v1    # "fileStream":Ljava/io/InputStream;
    goto :goto_1

    .end local v1    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "fileStream":Ljava/io/InputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "fileStream":Ljava/io/InputStream;
    .restart local v1    # "fileStream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method private static zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .locals 12
    .param p0, "resFile"    # Ljava/io/File;
    .param p1, "zipout"    # Ljava/util/zip/ZipOutputStream;
    .param p2, "rootpath"    # Ljava/lang/String;

    .prologue
    const/high16 v11, 0x100000

    const/4 v9, 0x0

    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 95
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ""

    :goto_0
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 96
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 98
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string v8, "8859_1"

    invoke-virtual {p2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string v10, "GB2312"

    invoke-direct {v7, v8, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p2    # "rootpath":Ljava/lang/String;
    .local v7, "rootpath":Ljava/lang/String;
    move-object p2, v7

    .line 102
    .end local v7    # "rootpath":Ljava/lang/String;
    .restart local p2    # "rootpath":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 103
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 104
    .local v3, "fileList":[Ljava/io/File;
    array-length v10, v3

    move v8, v9

    :goto_2
    if-ge v8, v10, :cond_3

    aget-object v2, v3, v8

    .line 105
    .local v2, "file":Ljava/io/File;
    invoke-static {v2, p1, p2}, Lcn/nubia/notepad/utils/FileHelper;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 104
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 95
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileList":[Ljava/io/File;
    :cond_0
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 108
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    new-array v0, v11, [B

    .line 109
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 111
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v9, 0x100000

    invoke-direct {v5, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 113
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .local v5, "in":Ljava/io/BufferedInputStream;
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "image"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "image/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 118
    :cond_2
    :goto_3
    new-instance v8, Ljava/util/zip/ZipEntry;

    invoke-direct {v8, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 119
    :goto_4
    invoke-virtual {v5, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .local v6, "realLength":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_5

    .line 120
    const/4 v8, 0x0

    invoke-virtual {p1, v0, v8, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 125
    .end local v6    # "realLength":I
    :catch_1
    move-exception v1

    move-object v4, v5

    .line 126
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    :cond_3
    :goto_6
    return-void

    .line 115
    .restart local v0    # "buffer":[B
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "record"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "record/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 122
    .restart local v6    # "realLength":I
    :cond_5
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 123
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 124
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    .line 125
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .end local v6    # "realLength":I
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v1

    goto :goto_5
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "zipFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "resFileList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    new-instance v4, Ljava/io/File;

    sget-object v8, Lcn/nubia/notepad/utils/FileHelper;->CLOULD_PATH:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v4, "filedir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 50
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 52
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcn/nubia/notepad/utils/FileHelper;->CLOULD_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "cache":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 59
    :cond_1
    const/4 v6, 0x0

    .line 61
    .local v6, "zipout":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipOutputStream;

    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v10, 0x100000

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v7, v8}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "zipout":Ljava/util/zip/ZipOutputStream;
    .local v7, "zipout":Ljava/util/zip/ZipOutputStream;
    move-object v6, v7

    .line 67
    .end local v7    # "zipout":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "zipout":Ljava/util/zip/ZipOutputStream;
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 68
    .local v5, "resFile":Ljava/io/File;
    const-string v9, ""

    invoke-static {v5, v6, v9}, Lcn/nubia/notepad/utils/FileHelper;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 63
    .end local v5    # "resFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e1":Ljava/io/FileNotFoundException;
    const-string v3, ""

    .line 65
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v2    # "e1":Ljava/io/FileNotFoundException;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    invoke-static {v6}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 78
    :goto_2
    return-object v3

    .line 72
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    const-string v3, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    invoke-static {v6}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v6}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 77
    throw v8
.end method
