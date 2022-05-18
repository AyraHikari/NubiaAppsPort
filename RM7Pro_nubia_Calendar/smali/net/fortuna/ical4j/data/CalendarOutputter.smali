.class public Lnet/fortuna/ical4j/data/CalendarOutputter;
.super Lnet/fortuna/ical4j/data/AbstractOutputter;
.source "CalendarOutputter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lnet/fortuna/ical4j/data/AbstractOutputter;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "validating"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/AbstractOutputter;-><init>(Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "validating"    # Z
    .param p2, "foldLength"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/data/AbstractOutputter;-><init>(ZI)V

    .line 72
    return-void
.end method


# virtual methods
.method public final output(Lnet/fortuna/ical4j/model/Calendar;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "calendar"    # Lnet/fortuna/ical4j/model/Calendar;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Lnet/fortuna/ical4j/data/CalendarOutputter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, p1, v0}, Lnet/fortuna/ical4j/data/CalendarOutputter;->output(Lnet/fortuna/ical4j/model/Calendar;Ljava/io/Writer;)V

    .line 84
    return-void
.end method

.method public final output(Lnet/fortuna/ical4j/model/Calendar;Ljava/io/Writer;)V
    .locals 2
    .param p1, "calendar"    # Lnet/fortuna/ical4j/model/Calendar;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lnet/fortuna/ical4j/data/CalendarOutputter;->isValidating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->validate()V

    .line 99
    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/data/FoldingWriter;

    iget v1, p0, Lnet/fortuna/ical4j/data/CalendarOutputter;->foldLength:I

    invoke-direct {v0, p2, v1}, Lnet/fortuna/ical4j/data/FoldingWriter;-><init>(Ljava/io/Writer;I)V

    .line 101
    .local v0, "writer":Lnet/fortuna/ical4j/data/FoldingWriter;
    :try_start_0
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/data/FoldingWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v0}, Lnet/fortuna/ical4j/data/FoldingWriter;->close()V

    .line 106
    return-void

    .line 104
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lnet/fortuna/ical4j/data/FoldingWriter;->close()V

    .line 105
    throw v1
.end method
