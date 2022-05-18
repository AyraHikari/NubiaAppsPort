.class Lorg/joda/time/tz/ZoneInfoProvider$1;
.super Ljava/lang/Object;
.source "ZoneInfoProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/joda/time/tz/ZoneInfoProvider;->openResource(Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/joda/time/tz/ZoneInfoProvider;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/joda/time/tz/ZoneInfoProvider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lorg/joda/time/tz/ZoneInfoProvider$1;->this$0:Lorg/joda/time/tz/ZoneInfoProvider;

    iput-object p2, p0, Lorg/joda/time/tz/ZoneInfoProvider$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider$1;->this$0:Lorg/joda/time/tz/ZoneInfoProvider;

    invoke-static {v0}, Lorg/joda/time/tz/ZoneInfoProvider;->access$000(Lorg/joda/time/tz/ZoneInfoProvider;)Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider$1;->this$0:Lorg/joda/time/tz/ZoneInfoProvider;

    invoke-static {v0}, Lorg/joda/time/tz/ZoneInfoProvider;->access$000(Lorg/joda/time/tz/ZoneInfoProvider;)Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoProvider$1;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider$1;->val$path:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lorg/joda/time/tz/ZoneInfoProvider$1;->run()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
