.class Lnet/fortuna/ical4j/model/component/CalendarComponent$EmptyValidator;
.super Ljava/lang/Object;
.source "CalendarComponent.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/component/CalendarComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyValidator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/component/CalendarComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/component/CalendarComponent$1;

    .prologue
    .line 168
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/CalendarComponent$EmptyValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 175
    return-void
.end method
