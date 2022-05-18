.class public Lcn/nubia/calendar/ContactBirthDayObserver;
.super Landroid/database/ContentObserver;
.source "ContactBirthDayObserver.java"


# static fields
.field public static final COMMAND:Ljava/lang/String; = "command"

.field public static final COMMAND_UPDATE:Ljava/lang/String; = "update"

.field private static final DATA2:I = 0x3

.field public static final EXTRA_NAME:Ljava/lang/String; = "info"


# instance fields
.field cData:Landroid/database/Cursor;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/ContactBirthDayObserver;->cData:Landroid/database/Cursor;

    .line 33
    iput-object p2, p0, Lcn/nubia/calendar/ContactBirthDayObserver;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method
