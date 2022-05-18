.class public Lnubia/notepad/utils/PcmToWav;
.super Ljava/lang/Object;
.source "PcmToWav.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearFiles(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "filePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 186
    new-instance v0, Ljava/io/File;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 185
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public static makePCMFileToWAVFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 18
    .param p0, "pcmPath"    # Ljava/lang/String;
    .param p1, "destinationPath"    # Ljava/lang/String;
    .param p2, "deletePcmFile"    # Z

    .prologue
    .line 110
    const/4 v3, 0x0

    .line 111
    .local v3, "buffer":[B
    const/4 v2, 0x0

    .line 112
    .local v2, "TOTAL_SIZE":I
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 114
    const/4 v14, 0x0

    .line 175
    :goto_0
    return v14

    .line 116
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v2, v14

    .line 118
    new-instance v9, Lnubia/notepad/utils/WaveHeader;

    invoke-direct {v9}, Lnubia/notepad/utils/WaveHeader;-><init>()V

    .line 121
    .local v9, "header":Lnubia/notepad/utils/WaveHeader;
    add-int/lit8 v14, v2, 0x24

    iput v14, v9, Lnubia/notepad/utils/WaveHeader;->fileLength:I

    .line 122
    const/16 v14, 0x10

    iput v14, v9, Lnubia/notepad/utils/WaveHeader;->FmtHdrLeth:I

    .line 123
    const/16 v14, 0x10

    iput-short v14, v9, Lnubia/notepad/utils/WaveHeader;->BitsPerSample:S

    .line 124
    const/4 v14, 0x2

    iput-short v14, v9, Lnubia/notepad/utils/WaveHeader;->Channels:S

    .line 125
    const/4 v14, 0x1

    iput-short v14, v9, Lnubia/notepad/utils/WaveHeader;->FormatTag:S

    .line 126
    const/16 v14, 0x1f40

    iput v14, v9, Lnubia/notepad/utils/WaveHeader;->SamplesPerSec:I

    .line 127
    iget-short v14, v9, Lnubia/notepad/utils/WaveHeader;->Channels:S

    iget-short v15, v9, Lnubia/notepad/utils/WaveHeader;->BitsPerSample:S

    mul-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x8

    int-to-short v14, v14

    iput-short v14, v9, Lnubia/notepad/utils/WaveHeader;->BlockAlign:S

    .line 128
    iget-short v14, v9, Lnubia/notepad/utils/WaveHeader;->BlockAlign:S

    iget v15, v9, Lnubia/notepad/utils/WaveHeader;->SamplesPerSec:I

    mul-int/2addr v14, v15

    iput v14, v9, Lnubia/notepad/utils/WaveHeader;->AvgBytesPerSec:I

    .line 129
    iput v2, v9, Lnubia/notepad/utils/WaveHeader;->DataHdrLeth:I

    .line 131
    const/4 v8, 0x0

    .line 133
    .local v8, "h":[B
    :try_start_0
    invoke-virtual {v9}, Lnubia/notepad/utils/WaveHeader;->getHeader()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 139
    array-length v14, v8

    const/16 v15, 0x2c

    if-eq v14, v15, :cond_1

    .line 140
    const/4 v14, 0x0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v6

    .line 135
    .local v6, "e1":Ljava/io/IOException;
    const-string v14, "PcmToWav"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v14, 0x0

    goto :goto_0

    .line 143
    .end local v6    # "e1":Ljava/io/IOException;
    :cond_1
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v4, "destfile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 145
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 149
    :cond_2
    const/16 v14, 0x1000

    :try_start_1
    new-array v3, v14, [B

    .line 150
    const/4 v10, 0x0

    .line 151
    .local v10, "inStream":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 153
    .local v12, "ouStream":Ljava/io/OutputStream;
    new-instance v12, Ljava/io/BufferedOutputStream;

    .end local v12    # "ouStream":Ljava/io/OutputStream;
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 155
    .restart local v12    # "ouStream":Ljava/io/OutputStream;
    const/4 v14, 0x0

    array-length v15, v8

    invoke-virtual {v12, v8, v14, v15}, Ljava/io/OutputStream;->write([BII)V

    .line 156
    new-instance v10, Ljava/io/BufferedInputStream;

    .end local v10    # "inStream":Ljava/io/InputStream;
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 157
    .restart local v10    # "inStream":Ljava/io/InputStream;
    invoke-virtual {v10, v3}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 158
    .local v13, "size":I
    :goto_1
    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    .line 159
    invoke-virtual {v12, v3}, Ljava/io/OutputStream;->write([B)V

    .line 160
    invoke-virtual {v10, v3}, Ljava/io/InputStream;->read([B)I

    move-result v13

    goto :goto_1

    .line 162
    :cond_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 163
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 171
    if-eqz p2, :cond_4

    .line 172
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 174
    :cond_4
    const-string v14, "PcmToWav"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "makePCMFileToWAVFile  success!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v17, "yyyy-MM-dd hh:mm"

    invoke-direct/range {v16 .. v17}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v16 .. v17}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 164
    .end local v10    # "inStream":Ljava/io/InputStream;
    .end local v12    # "ouStream":Ljava/io/OutputStream;
    .end local v13    # "size":I
    :catch_1
    move-exception v5

    .line 165
    .local v5, "e":Ljava/io/FileNotFoundException;
    const-string v14, "PcmToWav"

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 167
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v11

    .line 168
    .local v11, "ioe":Ljava/io/IOException;
    const-string v14, "PcmToWav"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public static mergePCMFilesToWAVFile(Ljava/util/List;Ljava/lang/String;)Z
    .locals 22
    .param p1, "destinationPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "filePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v7, v0, [Ljava/io/File;

    .line 29
    .local v7, "file":[Ljava/io/File;
    const/4 v3, 0x0

    .line 31
    .local v3, "buffer":[B
    const/4 v2, 0x0

    .line 32
    .local v2, "TOTAL_SIZE":I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v8

    .line 34
    .local v8, "fileNum":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v8, :cond_0

    .line 35
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v18, v7, v11

    .line 36
    int-to-long v0, v2

    move-wide/from16 v18, v0

    aget-object v17, v7, v11

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v2, v0

    .line 34
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 40
    :cond_0
    new-instance v10, Lnubia/notepad/utils/WaveHeader;

    invoke-direct {v10}, Lnubia/notepad/utils/WaveHeader;-><init>()V

    .line 43
    .local v10, "header":Lnubia/notepad/utils/WaveHeader;
    add-int/lit8 v17, v2, 0x24

    move/from16 v0, v17

    iput v0, v10, Lnubia/notepad/utils/WaveHeader;->fileLength:I

    .line 44
    const/16 v17, 0x10

    move/from16 v0, v17

    iput v0, v10, Lnubia/notepad/utils/WaveHeader;->FmtHdrLeth:I

    .line 45
    const/16 v17, 0x10

    move/from16 v0, v17

    iput-short v0, v10, Lnubia/notepad/utils/WaveHeader;->BitsPerSample:S

    .line 46
    const/16 v17, 0x2

    move/from16 v0, v17

    iput-short v0, v10, Lnubia/notepad/utils/WaveHeader;->Channels:S

    .line 47
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-short v0, v10, Lnubia/notepad/utils/WaveHeader;->FormatTag:S

    .line 48
    const/16 v17, 0x1f40

    move/from16 v0, v17

    iput v0, v10, Lnubia/notepad/utils/WaveHeader;->SamplesPerSec:I

    .line 49
    iget-short v0, v10, Lnubia/notepad/utils/WaveHeader;->Channels:S

    move/from16 v17, v0

    iget-short v0, v10, Lnubia/notepad/utils/WaveHeader;->BitsPerSample:S

    move/from16 v18, v0

    mul-int v17, v17, v18

    div-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-short v0, v10, Lnubia/notepad/utils/WaveHeader;->BlockAlign:S

    .line 50
    iget-short v0, v10, Lnubia/notepad/utils/WaveHeader;->BlockAlign:S

    move/from16 v17, v0

    iget v0, v10, Lnubia/notepad/utils/WaveHeader;->SamplesPerSec:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lnubia/notepad/utils/WaveHeader;->AvgBytesPerSec:I

    .line 51
    iput v2, v10, Lnubia/notepad/utils/WaveHeader;->DataHdrLeth:I

    .line 53
    const/4 v9, 0x0

    .line 55
    .local v9, "h":[B
    :try_start_0
    invoke-virtual {v10}, Lnubia/notepad/utils/WaveHeader;->getHeader()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 61
    array-length v0, v9

    move/from16 v17, v0

    const/16 v18, 0x2c

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 62
    const/16 v17, 0x0

    .line 97
    :goto_1
    return v17

    .line 56
    :catch_0
    move-exception v6

    .line 57
    .local v6, "e1":Ljava/io/IOException;
    const-string v17, "PcmToWav"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/16 v17, 0x0

    goto :goto_1

    .line 65
    .end local v6    # "e1":Ljava/io/IOException;
    :cond_1
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v4, "destfile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 67
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 71
    :cond_2
    const/16 v17, 0x1000

    :try_start_1
    move/from16 v0, v17

    new-array v3, v0, [B

    .line 72
    const/4 v12, 0x0

    .line 73
    .local v12, "inStream":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 75
    .local v15, "ouStream":Ljava/io/OutputStream;
    new-instance v15, Ljava/io/BufferedOutputStream;

    .end local v15    # "ouStream":Ljava/io/OutputStream;
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    .restart local v15    # "ouStream":Ljava/io/OutputStream;
    const/16 v17, 0x0

    array-length v0, v9

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v9, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 78
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    if-ge v14, v8, :cond_4

    .line 79
    new-instance v12, Ljava/io/BufferedInputStream;

    .end local v12    # "inStream":Ljava/io/InputStream;
    new-instance v17, Ljava/io/FileInputStream;

    aget-object v18, v7, v14

    invoke-direct/range {v17 .. v18}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 80
    .restart local v12    # "inStream":Ljava/io/InputStream;
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I

    move-result v16

    .line 81
    .local v16, "size":I
    :goto_3
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 82
    invoke-virtual {v15, v3}, Ljava/io/OutputStream;->write([B)V

    .line 83
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I

    move-result v16

    goto :goto_3

    .line 85
    :cond_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 78
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 87
    .end local v16    # "size":I
    :cond_4
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 95
    invoke-static/range {p0 .. p0}, Lnubia/notepad/utils/PcmToWav;->clearFiles(Ljava/util/List;)V

    .line 96
    const-string v17, "PcmToWav"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mergePCMFilesToWAVFile  success!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyy-MM-dd hh:mm"

    invoke-direct/range {v19 .. v20}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 88
    .end local v12    # "inStream":Ljava/io/InputStream;
    .end local v14    # "j":I
    .end local v15    # "ouStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v5

    .line 89
    .local v5, "e":Ljava/io/FileNotFoundException;
    const-string v17, "PcmToWav"

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 91
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v13

    .line 92
    .local v13, "ioe":Ljava/io/IOException;
    const-string v17, "PcmToWav"

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/16 v17, 0x0

    goto/16 :goto_1
.end method
