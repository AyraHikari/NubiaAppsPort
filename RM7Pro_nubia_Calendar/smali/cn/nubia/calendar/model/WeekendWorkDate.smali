.class public Lcn/nubia/calendar/model/WeekendWorkDate;
.super Ljava/lang/Object;
.source "WeekendWorkDate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final PREFIX:Ljava/lang/String; = "weekend"

.field private static final TAG:Ljava/lang/String; = "Calendar"


# instance fields
.field private mWeekendWorkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/model/WeekendWorkDate;->mWeekendWorkList:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method public static read(Landroid/content/Context;I)Lcn/nubia/calendar/model/WeekendWorkDate;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I

    .prologue
    .line 74
    const/4 v5, 0x0

    .line 75
    .local v5, "weekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    const/4 v2, 0x0

    .line 76
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 78
    .local v3, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "weekend"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 79
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcn/nubia/calendar/model/WeekendWorkDate;

    move-object v5, v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    if-eqz v4, :cond_0

    .line 91
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 92
    :cond_0
    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v3, v4

    .line 99
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :cond_2
    :goto_0
    return-object v5

    .line 94
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 98
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 82
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v6, "Calendar"

    const-string v7, "File not found. Synchronize data from network"

    invoke-static {v6, v7}, Lcn/nubia/calendar/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    if-eqz v3, :cond_3

    .line 91
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 92
    :cond_3
    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 94
    :catch_2
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 90
    if-eqz v3, :cond_4

    .line 91
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 92
    :cond_4
    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 94
    :catch_4
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 90
    :goto_3
    if-eqz v3, :cond_5

    .line 91
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 92
    :cond_5
    if-eqz v2, :cond_6

    .line 93
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 98
    :cond_6
    :goto_4
    throw v6

    .line 94
    :catch_5
    move-exception v1

    .line 96
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 89
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 86
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 82
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/model/WeekendWorkDate;->mWeekendWorkList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcn/nubia/calendar/model/WeekendWorkDate;->mWeekendWorkList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_0
    return-void
.end method

.method public getWeekendWorkList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/calendar/model/WeekendWorkDate;->mWeekendWorkList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcn/nubia/calendar/model/WeekendWorkDate;->year:I

    return v0
.end method

.method public setWeekendWorkList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "weekendWorkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcn/nubia/calendar/model/WeekendWorkDate;->mWeekendWorkList:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 49
    iput p1, p0, Lcn/nubia/calendar/model/WeekendWorkDate;->year:I

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    .local v1, "sBuffer":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcn/nubia/calendar/model/WeekendWorkDate;->mWeekendWorkList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, "date":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 63
    .end local v0    # "date":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public write(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "year"    # I

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, "fs":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 112
    .local v2, "ops":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "weekend"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 114
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v2    # "ops":Ljava/io/ObjectOutputStream;
    .local v3, "ops":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    if-eqz v3, :cond_0

    .line 125
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 126
    :cond_0
    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v2, v3

    .line 133
    .end local v3    # "ops":Ljava/io/ObjectOutputStream;
    .restart local v2    # "ops":Ljava/io/ObjectOutputStream;
    :cond_2
    :goto_0
    return-void

    .line 128
    .end local v2    # "ops":Ljava/io/ObjectOutputStream;
    .restart local v3    # "ops":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 132
    .end local v3    # "ops":Ljava/io/ObjectOutputStream;
    .restart local v2    # "ops":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 116
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v4, "Calendar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file is not exists:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    if-eqz v2, :cond_3

    .line 125
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 126
    :cond_3
    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 128
    :catch_2
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 120
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v4, "Calendar"

    const-string v5, "write file error"

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 124
    if-eqz v2, :cond_4

    .line 125
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 126
    :cond_4
    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 128
    :catch_4
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 124
    :goto_3
    if-eqz v2, :cond_5

    .line 125
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 126
    :cond_5
    if-eqz v1, :cond_6

    .line 127
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 132
    :cond_6
    :goto_4
    throw v4

    .line 128
    :catch_5
    move-exception v0

    .line 130
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 123
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ops":Ljava/io/ObjectOutputStream;
    .restart local v3    # "ops":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "ops":Ljava/io/ObjectOutputStream;
    .restart local v2    # "ops":Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 119
    .end local v2    # "ops":Ljava/io/ObjectOutputStream;
    .restart local v3    # "ops":Ljava/io/ObjectOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "ops":Ljava/io/ObjectOutputStream;
    .restart local v2    # "ops":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 116
    .end local v2    # "ops":Ljava/io/ObjectOutputStream;
    .restart local v3    # "ops":Ljava/io/ObjectOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "ops":Ljava/io/ObjectOutputStream;
    .restart local v2    # "ops":Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method
