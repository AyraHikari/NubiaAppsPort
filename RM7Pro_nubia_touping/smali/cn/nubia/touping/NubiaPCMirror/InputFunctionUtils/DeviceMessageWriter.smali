.class public Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;
.super Ljava/lang/Object;
.source "DeviceMessageWriter.java"


# static fields
.field public static final CLIPBOARD_TEXT_MAX_LENGTH:I = 0xffd

.field private static final MAX_EVENT_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "DeviceMessageWriter"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final rawBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->rawBuffer:[B

    .line 18
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->rawBuffer:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public declared-synchronized writeTo(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;Ljava/io/OutputStream;)V
    .locals 31
    .param p1, "msg"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->getType()I

    move-result v28

    packed-switch v28, :pswitch_data_0

    .line 104
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Unknown device message: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->getType()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :goto_0
    monitor-exit p0

    return-void

    .line 24
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->getText()Ljava/lang/String;

    move-result-object v20

    .line 26
    .local v20, "text":Ljava/lang/String;
    sget-object v28, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    .line 27
    .local v12, "raw":[B
    const/16 v28, 0xffd

    move/from16 v0, v28

    invoke-static {v12, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/StringUtils;->getUtf8TruncationIndex([BI)I

    move-result v4

    .line 28
    .local v4, "len":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    int-to-short v0, v4

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v12, v1, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->rawBuffer:[B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/nio/ByteBuffer;->position()I

    move-result v30

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 31
    const-string v28, "DeviceMessageWriter0088"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "text = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 21
    .end local v4    # "len":I
    .end local v12    # "raw":[B
    .end local v20    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v28

    monitor-exit p0

    throw v28

    .line 34
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->getText()Ljava/lang/String;

    move-result-object v23

    .line 36
    .local v23, "text_packageName":Ljava/lang/String;
    sget-object v28, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v15

    .line 37
    .local v15, "raw_packageName":[B
    const/16 v28, 0xffd

    move/from16 v0, v28

    invoke-static {v15, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/StringUtils;->getUtf8TruncationIndex([BI)I

    move-result v6

    .line 38
    .local v6, "len_packageName":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    int-to-short v0, v6

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v15, v1, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->rawBuffer:[B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/nio/ByteBuffer;->position()I

    move-result v30

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 41
    const-string v28, "DeviceMessageWriter0088"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "text_packageName = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 44
    .end local v6    # "len_packageName":I
    .end local v15    # "raw_packageName":[B
    .end local v23    # "text_packageName":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->getText()Ljava/lang/String;

    move-result-object v22

    .line 46
    .local v22, "text_linksocketstatus":Ljava/lang/String;
    sget-object v28, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    .line 47
    .local v14, "raw_linksocketstatus":[B
    const/16 v28, 0xffd

    move/from16 v0, v28

    invoke-static {v14, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/StringUtils;->getUtf8TruncationIndex([BI)I

    move-result v5

    .line 48
    .local v5, "len_linksocketstatus":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    int-to-short v0, v5

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v14, v1, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->rawBuffer:[B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/nio/ByteBuffer;->position()I

    move-result v30

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 51
    const-string v28, "DeviceMessageWriter0088"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "text_linksocketstatus = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 54
    .end local v5    # "len_linksocketstatus":I
    .end local v14    # "raw_linksocketstatus":[B
    .end local v22    # "text_linksocketstatus":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x3

    invoke-virtual/range {v28 .. v29}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->getText()Ljava/lang/String;

    move-result-object v26

    .line 56
    .local v26, "text_viewfocusstatus":Ljava/lang/String;
    sget-object v28, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v18

    .line 57
    .local v18, "raw_viewfocusstatus":[B
    const/16 v28, 0xffd

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/StringUtils;->getUtf8TruncationIndex([BI)I

    move-result v10

    .line 58
    .local v10, "len_viewfocusstatus":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    int-to-short v0, v10

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->rawBuffer:[B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/nio/ByteBuffer;->position()I

    move-result v30

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 61
    const-string v28, "DeviceMessageWriter0088"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "text_viewfocusstatus = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 64
    .end local v10    # "len_viewfocusstatus":I
    .end local v18    # "raw_viewfocusstatus":[B
    .end local v26    # "text_viewfocusstatus":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x4

    invoke-virtual/range {v28 .. v29}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->getText()Ljava/lang/String;

    move-result-object v27

    .line 66
    .local v27, "text_viewgamespacesstatus":Ljava/lang/String;
    sget-object v28, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v19

    .line 67
    .local v19, "raw_viewgamespacesstatus":[B
    const/16 v28, 0xffd

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/StringUtils;->getUtf8TruncationIndex([BI)I

    move-result v11

    .line 68
    .local v11, "len_viewgamespacesstatus":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    int-to-short v0, v11

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->rawBuffer:[B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/nio/ByteBuffer;->position()I

    move-result v30

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 71
    const-string v28, "DeviceMessageWriter0088"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "text_viewgamespacesstatus = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 74
    .end local v11    # "len_viewgamespacesstatus":I
    .end local v19    # "raw_viewgamespacesstatus":[B
    .end local v27    # "text_viewgamespacesstatus":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x5

    invoke-virtual/range {v28 .. v29}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->getText()Ljava/lang/String;

    move-result-object v25

    .line 76
    .local v25, "text_viewPhoneWidthAndHeightstatus":Ljava/lang/String;
    sget-object v28, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    .line 77
    .local v17, "raw_viewPhoneWidthAndHeightstatus":[B
    const/16 v28, 0xffd

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/StringUtils;->getUtf8TruncationIndex([BI)I

    move-result v8

    .line 78
    .local v8, "len_viewPhoneWidthAndHeightstatus":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    int-to-short v0, v8

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->rawBuffer:[B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/nio/ByteBuffer;->position()I

    move-result v30

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 81
    const-string v28, "DeviceMessageWriter0088"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "text_viewPhoneWidthAndHeightstatus = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    .end local v8    # "len_viewPhoneWidthAndHeightstatus":I
    .end local v17    # "raw_viewPhoneWidthAndHeightstatus":[B
    .end local v25    # "text_viewPhoneWidthAndHeightstatus":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x6

    invoke-virtual/range {v28 .. v29}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->getText()Ljava/lang/String;

    move-result-object v24

    .line 86
    .local v24, "text_viewPhoneToupingApkVersion":Ljava/lang/String;
    sget-object v28, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v16

    .line 87
    .local v16, "raw_viewPhoneToupingApkVersion":[B
    const/16 v28, 0xffd

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/StringUtils;->getUtf8TruncationIndex([BI)I

    move-result v7

    .line 88
    .local v7, "len_viewPhoneToupingApkVersion":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    int-to-short v0, v7

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->rawBuffer:[B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/nio/ByteBuffer;->position()I

    move-result v30

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 91
    const-string v28, "DeviceMessageWriter0088"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "text_viewPhoneToupingApkVersion = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    .end local v7    # "len_viewPhoneToupingApkVersion":I
    .end local v16    # "raw_viewPhoneToupingApkVersion":[B
    .end local v24    # "text_viewPhoneToupingApkVersion":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x7

    invoke-virtual/range {v28 .. v29}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->getText()Ljava/lang/String;

    move-result-object v21

    .line 96
    .local v21, "text_allmessage":Ljava/lang/String;
    sget-object v28, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    .line 97
    .local v13, "raw_allmessage":[B
    const/16 v28, 0xffd

    move/from16 v0, v28

    invoke-static {v13, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/StringUtils;->getUtf8TruncationIndex([BI)I

    move-result v9

    .line 98
    .local v9, "len_viewexpandingsion":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    int-to-short v0, v9

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v13, v1, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->rawBuffer:[B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/nio/ByteBuffer;->position()I

    move-result v30

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 101
    const-string v28, "DeviceMessageWriter0088"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "text_allmessage = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
