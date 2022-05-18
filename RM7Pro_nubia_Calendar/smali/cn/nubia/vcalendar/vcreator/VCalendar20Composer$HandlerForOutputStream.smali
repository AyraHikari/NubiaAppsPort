.class public Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;
.super Ljava/lang/Object;
.source "VCalendar20Composer.java"

# interfaces
.implements Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerForOutputStream"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VCalendar20Composer.HandlerForOutputStream"


# instance fields
.field private mOnTerminateIsCalled:Z

.field private final mOutputStream:Ljava/io/OutputStream;

.field private mWriter:Ljava/io/Writer;

.field final synthetic this$0:Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;


# direct methods
.method public constructor <init>(Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "this$0"    # Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 61
    iput-object p1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->this$0:Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->mOnTerminateIsCalled:Z

    .line 62
    iput-object p2, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 63
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->mOnTerminateIsCalled:Z

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->onTerminate()V

    .line 123
    :cond_0
    return-void
.end method

.method public onEntryCreated(Ljava/lang/String;)Z
    .locals 4
    .param p1, "vcard"    # Ljava/lang/String;

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "VCalendar20Composer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occurred during exportOneContactData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->this$0:Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;

    const-string v2, "IO Exception"

    invoke-static {v1, v2}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->access$102(Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInit(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    iget-object v4, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->this$0:Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;

    .line 68
    invoke-static {v4}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->access$000(Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e1":Ljava/io/UnsupportedEncodingException;
    const-string v1, "VCalendar20Composer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported charset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->this$0:Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;

    invoke-static {v3}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->access$000(Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->this$0:Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding is not supported (usually this does not happen!): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->this$0:Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;

    .line 72
    invoke-static {v3}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->access$000(Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v1, v2}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->access$102(Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 4

    .prologue
    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->mOnTerminateIsCalled:Z

    .line 95
    iget-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_1

    .line 100
    :try_start_0
    iget-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 101
    iget-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    instance-of v1, v1, Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v1, "VCalendar20Composer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException during closing the output stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 108
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :try_start_3
    iget-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 112
    :catch_1
    move-exception v1

    goto :goto_0

    .line 110
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 111
    :try_start_4
    iget-object v2, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 114
    :goto_1
    throw v1

    .line 112
    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method
