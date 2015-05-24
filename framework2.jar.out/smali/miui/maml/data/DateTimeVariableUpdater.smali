.class public Lmiui/maml/data/DateTimeVariableUpdater;
.super Lmiui/maml/data/NotifierVariableUpdater;
.source "DateTimeVariableUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/DateTimeVariableUpdater$2;,
        Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DateTimeVariableUpdater"

.field private static final TIME_DAY:I = 0x5265c00

.field private static final TIME_HOUR:I = 0x36ee80

.field private static final TIME_MINUTE:I = 0xea60

.field private static final TIME_SECOND:I = 0x3e8

.field public static final USE_TAG:Ljava/lang/String; = "DateTime"

.field private static final fields:[I


# instance fields
.field private mAmPm:Lmiui/maml/util/IndexedNumberVariable;

.field protected mCalendar:Lmiui/date/Calendar;

.field private mCurDay:J

.field private mCurrentTime:J

.field private mDate:Lmiui/maml/util/IndexedNumberVariable;

.field private mDateLunar:Lmiui/maml/util/IndexedNumberVariable;

.field private mDayOfWeek:Lmiui/maml/util/IndexedNumberVariable;

.field private mHour12:Lmiui/maml/util/IndexedNumberVariable;

.field private mHour24:Lmiui/maml/util/IndexedNumberVariable;

.field private mLastUpdatedTime:J

.field private mMinute:Lmiui/maml/util/IndexedNumberVariable;

.field private mMonth:Lmiui/maml/util/IndexedNumberVariable;

.field private mMonthLunar:Lmiui/maml/util/IndexedNumberVariable;

.field private mMonthLunarLeap:Lmiui/maml/util/IndexedNumberVariable;

.field private mNextAlarm:Lmiui/maml/util/IndexedStringVariable;

.field private mNextUpdateTime:J

.field private mSecond:Lmiui/maml/util/IndexedNumberVariable;

.field private mTime:Lmiui/maml/util/IndexedNumberVariable;

.field private mTimeAccuracy:J

.field private mTimeAccuracyField:I

.field private mTimeFormat:Lmiui/maml/util/IndexedNumberVariable;

.field private mTimeSys:Lmiui/maml/util/IndexedNumberVariable;

.field private final mTimeUpdater:Ljava/lang/Runnable;

.field private mToolCalendar:Lmiui/date/Calendar;

.field private mYear:Lmiui/maml/util/IndexedNumberVariable;

.field private mYearLunar:Lmiui/maml/util/IndexedNumberVariable;

.field private mYearLunar1864:Lmiui/maml/util/IndexedNumberVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->fields:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x16
        0x15
        0x14
        0x12
        0x9
    .end array-data
.end method

.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 1
    .param p1, "m"    # Lmiui/maml/data/VariableUpdaterManager;

    .prologue
    .line 85
    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/DateTimeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V
    .locals 8
    .param p1, "m"    # Lmiui/maml/data/VariableUpdaterManager;
    .param p2, "accuracy"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v5, Lmiui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lmiui/maml/data/NotifierVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 54
    new-instance v5, Lmiui/date/Calendar;

    invoke-direct {v5}, Lmiui/date/Calendar;-><init>()V

    iput-object v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    .line 56
    new-instance v5, Lmiui/date/Calendar;

    invoke-direct {v5}, Lmiui/date/Calendar;-><init>()V

    iput-object v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mToolCalendar:Lmiui/date/Calendar;

    .line 78
    new-instance v5, Lmiui/maml/data/DateTimeVariableUpdater$1;

    invoke-direct {v5, p0}, Lmiui/maml/data/DateTimeVariableUpdater$1;-><init>(Lmiui/maml/data/DateTimeVariableUpdater;)V

    iput-object v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "acc":Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 92
    invoke-static {}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->values()[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    move-result-object v2

    .local v2, "arr$":[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 93
    .local v0, "a":Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    invoke-virtual {v0}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    move-object v1, v0

    .line 92
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "a":Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    .end local v2    # "arr$":[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    if-nez v1, :cond_2

    .line 98
    sget-object v1, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    .line 99
    const-string v5, "DateTimeVariableUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid accuracy tag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_2
    invoke-direct {p0, v1}, Lmiui/maml/data/DateTimeVariableUpdater;->initInner(Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 1
    .param p1, "m"    # Lmiui/maml/data/VariableUpdaterManager;
    .param p2, "accuracy"    # Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    .prologue
    .line 105
    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/NotifierVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    .line 56
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mToolCalendar:Lmiui/date/Calendar;

    .line 78
    new-instance v0, Lmiui/maml/data/DateTimeVariableUpdater$1;

    invoke-direct {v0, p0}, Lmiui/maml/data/DateTimeVariableUpdater$1;-><init>(Lmiui/maml/data/DateTimeVariableUpdater;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 106
    invoke-direct {p0, p2}, Lmiui/maml/data/DateTimeVariableUpdater;->initInner(Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/data/DateTimeVariableUpdater;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/DateTimeVariableUpdater;

    .prologue
    .line 16
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method private checkUpdateTime()V
    .locals 12

    .prologue
    .line 205
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 208
    .local v3, "currentTimeMillis":J
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v8, v3, v4}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 210
    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->fields:[I

    .local v0, "arr$":[I
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget v5, v0, v6

    .line 211
    .local v5, "f":I
    iget v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    if-ne v5, v8, :cond_2

    .line 216
    .end local v5    # "f":I
    :cond_0
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v8}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 217
    .local v1, "currentTime":J
    iget-wide v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    cmp-long v8, v8, v1

    if-eqz v8, :cond_1

    .line 218
    iput-wide v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    .line 219
    iget-wide v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    iget-wide v10, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    .line 220
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 222
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    iget-wide v10, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    sub-long/2addr v10, v3

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    return-void

    .line 213
    .end local v1    # "currentTime":J
    .restart local v5    # "f":I
    :cond_2
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 210
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private initInner(Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 6
    .param p1, "accuracy"    # Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    .prologue
    const-wide/32 v4, 0xea60

    const/16 v3, 0x14

    .line 110
    const-string v0, "DateTimeVariableUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init with accuracy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater$2;->$SwitchMap$miui$maml$data$DateTimeVariableUpdater$Accuracy:[I

    invoke-virtual {p1}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 129
    iput-wide v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 130
    iput v3, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    .line 134
    :goto_0
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "year"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYear:Lmiui/maml/util/IndexedNumberVariable;

    .line 135
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "month"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonth:Lmiui/maml/util/IndexedNumberVariable;

    .line 136
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "date"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDate:Lmiui/maml/util/IndexedNumberVariable;

    .line 138
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "year_lunar"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lmiui/maml/util/IndexedNumberVariable;

    .line 139
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "year_lunar1864"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lmiui/maml/util/IndexedNumberVariable;

    .line 140
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "month_lunar"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lmiui/maml/util/IndexedNumberVariable;

    .line 141
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "month_lunar_leap"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lmiui/maml/util/IndexedNumberVariable;

    .line 142
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "date_lunar"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lmiui/maml/util/IndexedNumberVariable;

    .line 144
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "day_of_week"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lmiui/maml/util/IndexedNumberVariable;

    .line 145
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "ampm"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mAmPm:Lmiui/maml/util/IndexedNumberVariable;

    .line 146
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "hour12"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour12:Lmiui/maml/util/IndexedNumberVariable;

    .line 147
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "hour24"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour24:Lmiui/maml/util/IndexedNumberVariable;

    .line 148
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "minute"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMinute:Lmiui/maml/util/IndexedNumberVariable;

    .line 149
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "second"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mSecond:Lmiui/maml/util/IndexedNumberVariable;

    .line 150
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "time"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTime:Lmiui/maml/util/IndexedNumberVariable;

    .line 151
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "time_sys"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/maml/util/IndexedNumberVariable;

    .line 152
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/maml/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 153
    new-instance v0, Lmiui/maml/util/IndexedStringVariable;

    const-string v1, "next_alarm_time"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lmiui/maml/util/IndexedStringVariable;

    .line 155
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "time_format"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:Lmiui/maml/util/IndexedNumberVariable;

    .line 156
    iget-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_1
    invoke-virtual {v2, v0, v1}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 158
    return-void

    .line 113
    :pswitch_0
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 114
    const/16 v0, 0x9

    iput v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto/16 :goto_0

    .line 117
    :pswitch_1
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 118
    const/16 v0, 0x12

    iput v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto/16 :goto_0

    .line 121
    :pswitch_2
    iput-wide v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 122
    iput v3, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto/16 :goto_0

    .line 125
    :pswitch_3
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 126
    const/16 v0, 0x15

    iput v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto/16 :goto_0

    .line 156
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshAlarm()V
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "nextAlarm":Ljava/lang/String;
    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v1, v0}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method private updateTime()V
    .locals 14

    .prologue
    const/16 v7, 0x12

    const/4 v4, 0x0

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 227
    .local v10, "currentTimeMillis":J
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/maml/util/IndexedNumberVariable;

    long-to-double v5, v10

    invoke-virtual {v0, v5, v6}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 229
    const-wide/16 v5, 0x3e8

    div-long v8, v10, v5

    .line 230
    .local v8, "currentTime":J
    iget-wide v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    cmp-long v0, v8, v5

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v0, v10, v11}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 233
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    .line 234
    .local v1, "year":I
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    .line 235
    .local v2, "month":I
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    .line 236
    .local v3, "date":I
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mAmPm:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v0, v5, v6}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 237
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour24:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v5, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v0, v5, v6}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 238
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour12:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v5, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    rem-int/lit8 v5, v5, 0xc

    int-to-double v5, v5

    invoke-virtual {v0, v5, v6}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 239
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMinute:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v0, v5, v6}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 240
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYear:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v5, v1

    invoke-virtual {v0, v5, v6}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 241
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonth:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v5, v2

    invoke-virtual {v0, v5, v6}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 242
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDate:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v5, v3

    invoke-virtual {v0, v5, v6}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 244
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v0, v5, v6}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 245
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mSecond:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v0, v5, v6}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 247
    int-to-long v5, v3

    iget-wide v12, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurDay:J

    cmp-long v0, v5, v12

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mToolCalendar:Lmiui/date/Calendar;

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    .line 249
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mToolCalendar:Lmiui/date/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v0, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 250
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mToolCalendar:Lmiui/date/Calendar;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v0, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 251
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mToolCalendar:Lmiui/date/Calendar;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v0, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 252
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mToolCalendar:Lmiui/date/Calendar;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v0, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 253
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mToolCalendar:Lmiui/date/Calendar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v0, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 254
    mul-int/lit16 v0, v1, 0x2710

    mul-int/lit8 v4, v2, 0x64

    add-int/2addr v0, v4

    add-int/2addr v0, v3

    int-to-long v4, v0

    iput-wide v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurDay:J

    .line 256
    :cond_0
    iput-wide v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    .line 258
    .end local v1    # "year":I
    .end local v2    # "month":I
    .end local v3    # "date":I
    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 192
    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->finish()V

    .line 193
    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurDay:J

    .line 194
    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    .line 195
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 161
    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->init()V

    .line 163
    iget-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 166
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 167
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->updateTime()V

    .line 168
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 169
    return-void

    .line 163
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 262
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 263
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 178
    iget-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 180
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 183
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    .line 184
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 185
    return-void

    .line 178
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public tick(J)V
    .locals 3
    .param p1, "currentTime"    # J

    .prologue
    .line 172
    invoke-super {p0, p1, p2}, Lmiui/maml/data/NotifierVariableUpdater;->tick(J)V

    .line 173
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTime:Lmiui/maml/util/IndexedNumberVariable;

    long-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 174
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->updateTime()V

    .line 175
    return-void
.end method
