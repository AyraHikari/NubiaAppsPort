.class public Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;
.super Ljava/lang/Object;
.source "WeekendWorkDate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final PREFIX:Ljava/lang/String; = "weekend"


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

.field private mYear:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;->mWeekendWorkList:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public static read(Landroid/content/Context;I)Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weekend"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1}, Lcn/nubia/deskclock/util/Utils;->readFromFile(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;

    .line 69
    .local v0, "weekendWorkDate":Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;->mWeekendWorkList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;->mWeekendWorkList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
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
    .line 34
    iget-object v0, p0, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;->mWeekendWorkList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;->mYear:I

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
    .line 38
    .local p1, "weekendWorkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;->mWeekendWorkList:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 42
    iput p1, p0, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;->mYear:I

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    .local v1, "sBuffer":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;->mWeekendWorkList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    .local v0, "date":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 56
    .end local v0    # "date":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public write(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "year"    # I

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "weekend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/nubia/deskclock/util/Utils;->saveToFile(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-void
.end method
