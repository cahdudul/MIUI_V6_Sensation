.class public Lmiui/app/ToggleManager;
.super Ljava/lang/Object;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/ToggleManager$CloseDialogReceiver;,
        Lmiui/app/ToggleManager$WifiStateTracker;,
        Lmiui/app/ToggleManager$OnToggleOrderChangedListener;,
        Lmiui/app/ToggleManager$OnToggleChangedListener;
    }
.end annotation


# static fields
.field public static final ALPHA_DEFAULT:I = 0xff

.field public static final ALPHA_HALF:I = 0x7d

.field public static final DEFAULT_BACKLIGHT:I = 0x66

.field private static final DIVIDER_FIXED_POSITION_IN_PAGE_STYLE:I = 0xb

.field public static final EXTRA_LOCATE_DIVIDER:Ljava/lang/String; = "com.android.systemui.settings.EXTRA_LOCATE_DIVIDER"

.field public static final MAXIMUM_BACKLIGHT:I = 0xff

.field public static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

.field public static final MINIMUM_BACKLIGHT:I

.field private static final MINIMUM_COUNT_OF_TOGGLES_IN_STATUS_BAR:I = 0x4

.field public static final RANGE:I

.field static final TAG:Ljava/lang/String; = "ToggleManager"

.field public static final TOGGLE_ACCESS_CONTROL:I = 0x10

.field public static final TOGGLE_ADVANCED_SYNC:I = 0x13

.field public static final TOGGLE_AUTO_BRIGHTNESS:I = 0x16

.field public static final TOGGLE_BLUETOOTH:I = 0x2

.field public static final TOGGLE_BRIGHTNESS:I = 0x4

.field public static final TOGGLE_COUNT:I = 0x1b

.field public static final TOGGLE_DATA:I = 0x1

.field public static final TOGGLE_DIVIDER:I = 0x0

.field public static final TOGGLE_DRIVE_MODE:I = 0x15

.field public static final TOGGLE_FLIGHT_MODE:I = 0x9

.field public static final TOGGLE_GPS:I = 0x7

.field public static final TOGGLE_LOCK:I = 0xa

.field public static final TOGGLE_NETWORK_TYPE:I = 0x11

.field public static final TOGGLE_PAPER_MODE:I = 0x1a

.field public static final TOGGLE_POWER_MODE:I = 0x17

.field public static final TOGGLE_PRIVACY_MODE:I = 0xe

.field public static final TOGGLE_QUIET_MODE:I = 0x19

.field public static final TOGGLE_REBOOT:I = 0xc

.field public static final TOGGLE_RINGER:I = 0x5

.field public static final TOGGLE_ROTATE:I = 0x3

.field public static final TOGGLE_SCREENSHOT:I = 0x12

.field public static final TOGGLE_SCREEN_BUTTON:I = 0x14

.field public static final TOGGLE_SHUTDOWN:I = 0xd

.field public static final TOGGLE_SYNC:I = 0x8

.field public static final TOGGLE_TORCH:I = 0xb

.field public static final TOGGLE_VIBRATE:I = 0x6

.field public static final TOGGLE_WIFI:I = 0xf

.field public static final TOGGLE_WIFI_AP:I = 0x18

.field public static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field public static final ZEN_MODE:Ljava/lang/String; = "zen_mode"

.field public static final ZEN_MODE_IMPORTANT_INTERRUPTIONS:I = 0x1

.field public static final ZEN_MODE_MIUI_SILENT:I = 0x3

.field public static final ZEN_MODE_NO_INTERRUPTIONS:I = 0x2

.field public static final ZEN_MODE_OFF:I

.field private static mHasMobileDataFeature:Z

.field private static mVibrator:Landroid/os/Vibrator;

.field private static mWifiApEnabler:Lmiui/app/WifiApEnabler;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field private static sLongClickActions:[I

.field private static sTextColorDisable:I

.field private static sTextColorEnable:I

.field private static sToggleAlpha:[I

.field private static sToggleGeneralImages:[I

.field private static sToggleImages:[I

.field private static sToggleManager:Lmiui/app/ToggleManager;

.field private static sToggleNames:[I

.field private static sToggleStatus:[Z

.field private static sToggleStatusNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sToggleStringToId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mACObserver:Landroid/database/ContentObserver;

.field private mAccelerometer:Z

.field private final mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnable:Z

.field private mBluetoothEnabling:Z

.field private mBrightnessAutoAvailable:Z

.field private mBrightnessAutoLevel:F

.field private mBrightnessAutoMode:Z

.field private mBrightnessManualLevel:I

.field private final mBrightnessObserver:Landroid/database/ContentObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDriveMode:Z

.field private final mDriveModeObserver:Landroid/database/ContentObserver;

.field private mEnableNetType:Z

.field private mFlightMode:Z

.field private final mFlightModeObserver:Landroid/database/ContentObserver;

.field private mGpsEnable:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsSimMissing:Z

.field private final mLocationAllowedObserver:Landroid/database/ContentObserver;

.field private mMobileDataEnable:Z

.field private final mMobileDataEnableObserver:Landroid/database/ContentObserver;

.field private mMobileDataUtils:Landroid/app/MobileDataUtils;

.field private mMobilePolicyEnable:Z

.field private final mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

.field private mPaperMode:Z

.field private final mPaperModeObserver:Landroid/database/ContentObserver;

.field private mPowerMode:Ljava/lang/String;

.field private final mPowerModeObserver:Landroid/database/ContentObserver;

.field private mPrivacyMode:Z

.field private final mPrivacyModeObserver:Landroid/database/ContentObserver;

.field private mQuietMode:Z

.field private final mQuietModeObserver:Landroid/database/ContentObserver;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResource:Landroid/content/res/Resources;

.field private mScreenButtonDisabled:Z

.field private final mScreenButtonStateObserver:Landroid/database/ContentObserver;

.field private final mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

.field private mSilentEnabled:Z

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private final mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private final mTogglOrderObserver:Landroid/database/ContentObserver;

.field private mToggleChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/app/ToggleManager$OnToggleChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mToggleOrderChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/app/ToggleManager$OnToggleOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTorchEnable:Z

.field private final mTorchEnableObserver:Landroid/database/ContentObserver;

.field private final mUpdateSyncStateRunnable:Ljava/lang/Runnable;

.field private final mVibrateEnableObserver:Landroid/database/ContentObserver;

.field private final mWifiState:Lmiui/app/ToggleManager$WifiStateTracker;

.field private final mZenModeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 56

    .prologue
    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    .line 139
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    .line 141
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "access_control"

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "bluetooth"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "brightness_level"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "brightness_mode"

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "data"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "drive_mode"

    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "flight_mode"

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "gps"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "lock"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "network_type"

    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "power_mode"

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "privacy_mode"

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "quiet_mode"

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "reboot"

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "rotate"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "ringer_mode"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "screenshot"

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "screen_button"

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "shutdown"

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "sync_mode"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "sync_trigger"

    const/16 v3, 0x13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "torch"

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "vibration_mode"

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "wifi"

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "wifi_ap"

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "paper_mode"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/16 v1, 0x1b

    new-array v1, v1, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    .line 169
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x10

    const/high16 v3, 0x9040000

    aput v3, v1, v2

    .line 170
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x13

    const v3, 0x9040011

    aput v3, v1, v2

    .line 171
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x16

    const v3, 0x9040003

    aput v3, v1, v2

    .line 172
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/4 v2, 0x2

    const v3, 0x9040001

    aput v3, v1, v2

    .line 173
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/4 v2, 0x4

    const v3, 0x9040002

    aput v3, v1, v2

    .line 174
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/4 v2, 0x1

    const v3, 0x9040004

    aput v3, v1, v2

    .line 175
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/4 v2, 0x0

    const v3, 0x9040005

    aput v3, v1, v2

    .line 176
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x15

    const v3, 0x9040016

    aput v3, v1, v2

    .line 177
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x9

    const v3, 0x9040006

    aput v3, v1, v2

    .line 178
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/4 v2, 0x7

    const v3, 0x9040007

    aput v3, v1, v2

    .line 179
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0xa

    const v3, 0x9040008

    aput v3, v1, v2

    .line 180
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/4 v2, 0x5

    const v3, 0x9040009

    aput v3, v1, v2

    .line 181
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x11

    const v3, 0x904000a

    aput v3, v1, v2

    .line 182
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x17

    const v3, 0x9040015

    aput v3, v1, v2

    .line 183
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0xe

    const v3, 0x904000b

    aput v3, v1, v2

    .line 184
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0xc

    const v3, 0x904000c

    aput v3, v1, v2

    .line 185
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/4 v2, 0x3

    const v3, 0x904000d

    aput v3, v1, v2

    .line 186
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x14

    const v3, 0x904000e

    aput v3, v1, v2

    .line 187
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x12

    const v3, 0x904000f

    aput v3, v1, v2

    .line 188
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0xd

    const v3, 0x9040010

    aput v3, v1, v2

    .line 189
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x8

    const v3, 0x9040011

    aput v3, v1, v2

    .line 190
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0xb

    const v3, 0x9040012

    aput v3, v1, v2

    .line 191
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/4 v2, 0x6

    const v3, 0x9040013

    aput v3, v1, v2

    .line 192
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0xf

    const v3, 0x9040014

    aput v3, v1, v2

    .line 193
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x18

    const v3, 0x9040017

    aput v3, v1, v2

    .line 194
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x19

    const v3, 0x9040018

    aput v3, v1, v2

    .line 195
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x1a

    const v3, 0x9040019

    aput v3, v1, v2

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1b

    if-ge v0, v1, :cond_0

    .line 198
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lmiui/app/ToggleManager;->sToggleNames:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    const/16 v1, 0x1b

    new-array v1, v1, [I

    sput-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    .line 205
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x13

    const v3, 0x904001d

    aput v3, v1, v2

    .line 206
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x16

    const v3, 0x9040021

    aput v3, v1, v2

    .line 207
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/4 v2, 0x1

    const v3, 0x904001e

    aput v3, v1, v2

    .line 208
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/4 v2, 0x0

    const v3, 0x904001f

    aput v3, v1, v2

    .line 209
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x15

    const v3, 0x904002b

    aput v3, v1, v2

    .line 210
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/4 v2, 0x2

    const v3, 0x9040020

    aput v3, v1, v2

    .line 211
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/4 v2, 0x4

    const v3, 0x9040021

    aput v3, v1, v2

    .line 212
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x9

    const v3, 0x9040022

    aput v3, v1, v2

    .line 213
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/4 v2, 0x7

    const v3, 0x9040023

    aput v3, v1, v2

    .line 214
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/4 v2, 0x5

    const v3, 0x9040024

    aput v3, v1, v2

    .line 215
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x11

    const v3, 0x9040025

    aput v3, v1, v2

    .line 216
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x17

    const v3, 0x904002a    # 1.5889E-33f

    aput v3, v1, v2

    .line 217
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/4 v2, 0x3

    const v3, 0x9040026

    aput v3, v1, v2

    .line 218
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x8

    const v3, 0x9040027

    aput v3, v1, v2

    .line 219
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/4 v2, 0x6

    const v3, 0x9040028

    aput v3, v1, v2

    .line 220
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0xf

    const v3, 0x9040029

    aput v3, v1, v2

    .line 221
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x18

    const v3, 0x904002c

    aput v3, v1, v2

    .line 222
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x19

    const v3, 0x904002d

    aput v3, v1, v2

    .line 223
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0xe

    const v3, 0x904002e

    aput v3, v1, v2

    .line 224
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x10

    const v3, 0x904002f

    aput v3, v1, v2

    .line 225
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x1a

    const v3, 0x9040030

    aput v3, v1, v2

    .line 231
    const/16 v1, 0x1b

    new-array v1, v1, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    .line 232
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x10

    const v3, 0x9020001

    aput v3, v1, v2

    .line 233
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x13

    const v3, 0x9020032

    aput v3, v1, v2

    .line 234
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x16

    const v3, 0x9020004

    aput v3, v1, v2

    .line 235
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/4 v2, 0x2

    const v3, 0x9020003

    aput v3, v1, v2

    .line 236
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/4 v2, 0x4

    const v3, 0x9020008

    aput v3, v1, v2

    .line 237
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/4 v2, 0x1

    const v3, 0x902000a

    aput v3, v1, v2

    .line 238
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/4 v2, 0x0

    const v3, 0x902000b

    aput v3, v1, v2

    .line 239
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x15

    const v3, 0x902000d

    aput v3, v1, v2

    .line 240
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x9

    const v3, 0x902000f

    aput v3, v1, v2

    .line 241
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/4 v2, 0x7

    const v3, 0x9020011

    aput v3, v1, v2

    .line 242
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0xa

    const v3, 0x9020012

    aput v3, v1, v2

    .line 243
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/4 v2, 0x5

    const v3, 0x9020015

    aput v3, v1, v2

    .line 244
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x11

    const v3, 0x9020016

    aput v3, v1, v2

    .line 245
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x17

    const v3, 0x902001a

    aput v3, v1, v2

    .line 246
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0xe

    const v3, 0x902001c

    aput v3, v1, v2

    .line 247
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0xc

    const v3, 0x902001f

    aput v3, v1, v2

    .line 248
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/4 v2, 0x3

    const v3, 0x9020021

    aput v3, v1, v2

    .line 249
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x14

    const v3, 0x9020022

    aput v3, v1, v2

    .line 250
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x12

    const v3, 0x9020024

    aput v3, v1, v2

    .line 251
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0xd

    const v3, 0x9020026

    aput v3, v1, v2

    .line 252
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x8

    const v3, 0x9020032

    aput v3, v1, v2

    .line 253
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0xb

    const v3, 0x9020034

    aput v3, v1, v2

    .line 254
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/4 v2, 0x6

    const v3, 0x9020036

    aput v3, v1, v2

    .line 255
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0xf

    const v3, 0x902003a

    aput v3, v1, v2

    .line 256
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x18

    const v3, 0x9020038

    aput v3, v1, v2

    .line 257
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x19

    const v3, 0x902001e

    aput v3, v1, v2

    .line 258
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x1a

    const v3, 0x9020018

    aput v3, v1, v2

    .line 260
    const/16 v1, 0x1b

    new-array v1, v1, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    .line 261
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x1b

    if-ge v0, v1, :cond_1

    .line 262
    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    sget-object v2, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    :cond_1
    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const/16 v2, 0xa

    const v3, 0x9020013

    aput v3, v1, v2

    .line 265
    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const/16 v2, 0x12

    const v3, 0x9020025

    aput v3, v1, v2

    .line 271
    const/16 v1, 0x1b

    new-array v1, v1, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    .line 272
    sget-object v1, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v2, 0x10

    sget-object v3, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v4, 0x13

    sget-object v5, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v6, 0x16

    sget-object v7, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/4 v8, 0x2

    sget-object v9, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/4 v10, 0x4

    sget-object v11, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/4 v12, 0x1

    sget-object v13, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/4 v14, 0x0

    sget-object v15, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v16, 0x15

    sget-object v17, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v18, 0x9

    sget-object v19, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v20, 0x7

    sget-object v21, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v22, 0xa

    sget-object v23, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v24, 0x5

    sget-object v25, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v26, 0x11

    sget-object v27, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v28, 0x17

    sget-object v29, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v30, 0xe

    sget-object v31, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v32, 0xc

    sget-object v33, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v34, 0x3

    sget-object v35, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v36, 0x14

    sget-object v37, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v38, 0x12

    sget-object v39, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v40, 0xd

    sget-object v41, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v42, 0x8

    sget-object v43, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v44, 0xb

    sget-object v45, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v46, 0x6

    sget-object v47, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v48, 0x18

    sget-object v49, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v50, 0x19

    sget-object v51, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v52, 0x1a

    sget-object v53, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    const/16 v54, 0xf

    const/16 v55, 0xff

    aput v55, v53, v54

    aput v55, v51, v52

    aput v55, v49, v50

    aput v55, v47, v48

    aput v55, v45, v46

    aput v55, v43, v44

    aput v55, v41, v42

    aput v55, v39, v40

    aput v55, v37, v38

    aput v55, v35, v36

    aput v55, v33, v34

    aput v55, v31, v32

    aput v55, v29, v30

    aput v55, v27, v28

    aput v55, v25, v26

    aput v55, v23, v24

    aput v55, v21, v22

    aput v55, v19, v20

    aput v55, v17, v18

    aput v55, v15, v16

    aput v55, v13, v14

    aput v55, v11, v12

    aput v55, v9, v10

    aput v55, v7, v8

    aput v55, v5, v6

    aput v55, v3, v4

    aput v55, v1, v2

    .line 303
    const/16 v1, 0x1b

    new-array v1, v1, [Z

    sput-object v1, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    .line 324
    const-string v1, "persist.power.useautobrightadj"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    .line 329
    const/4 v1, 0x0

    sput-object v1, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    .line 891
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa0a0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    .line 894
    sget v1, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    rsub-int v1, v1, 0xff

    sput v1, Lmiui/app/ToggleManager;->RANGE:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    .line 317
    iput-boolean v6, p0, Lmiui/app/ToggleManager;->mEnableNetType:Z

    .line 896
    iput-object v8, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 898
    new-instance v5, Lmiui/app/ToggleManager$WifiStateTracker;

    invoke-direct {v5, v8}, Lmiui/app/ToggleManager$WifiStateTracker;-><init>(Lmiui/app/ToggleManager$1;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mWifiState:Lmiui/app/ToggleManager$WifiStateTracker;

    .line 915
    iput-boolean v7, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    .line 917
    new-instance v5, Lmiui/app/ToggleManager$1;

    invoke-direct {v5, p0}, Lmiui/app/ToggleManager$1;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 938
    new-instance v5, Lmiui/app/ToggleManager$2;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v8}, Lmiui/app/ToggleManager$2;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    .line 949
    new-instance v5, Lmiui/app/ToggleManager$3;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v8}, Lmiui/app/ToggleManager$3;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mFlightModeObserver:Landroid/database/ContentObserver;

    .line 956
    new-instance v5, Lmiui/app/ToggleManager$4;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v8}, Lmiui/app/ToggleManager$4;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mDriveModeObserver:Landroid/database/ContentObserver;

    .line 963
    new-instance v5, Lmiui/app/ToggleManager$5;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v8}, Lmiui/app/ToggleManager$5;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    .line 971
    new-instance v5, Lmiui/app/ToggleManager$6;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v8}, Lmiui/app/ToggleManager$6;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    .line 980
    new-instance v5, Lmiui/app/ToggleManager$7;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v8}, Lmiui/app/ToggleManager$7;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    .line 987
    new-instance v5, Lmiui/app/ToggleManager$8;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v8}, Lmiui/app/ToggleManager$8;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mPrivacyModeObserver:Landroid/database/ContentObserver;

    .line 994
    new-instance v5, Lmiui/app/ToggleManager$9;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v8}, Lmiui/app/ToggleManager$9;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mACObserver:Landroid/database/ContentObserver;

    .line 1001
    new-instance v5, Lmiui/app/ToggleManager$10;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v8}, Lmiui/app/ToggleManager$10;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    .line 1008
    new-instance v5, Lmiui/app/ToggleManager$11;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v8}, Lmiui/app/ToggleManager$11;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    .line 1014
    new-instance v5, Lmiui/app/ToggleManager$12;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v8}, Lmiui/app/ToggleManager$12;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 1021
    new-instance v5, Lmiui/app/ToggleManager$13;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v8}, Lmiui/app/ToggleManager$13;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 1028
    new-instance v5, Lmiui/app/ToggleManager$14;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v8}, Lmiui/app/ToggleManager$14;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    .line 1034
    new-instance v5, Lmiui/app/ToggleManager$15;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v8}, Lmiui/app/ToggleManager$15;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Landroid/database/ContentObserver;

    .line 1040
    new-instance v5, Lmiui/app/ToggleManager$16;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v8}, Lmiui/app/ToggleManager$16;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    .line 1046
    new-instance v5, Lmiui/app/ToggleManager$17;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v8}, Lmiui/app/ToggleManager$17;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mZenModeObserver:Landroid/database/ContentObserver;

    .line 1065
    new-instance v5, Lmiui/app/ToggleManager$18;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v8}, Lmiui/app/ToggleManager$18;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    .line 1073
    new-instance v5, Lmiui/app/ToggleManager$19;

    invoke-direct {v5, p0}, Lmiui/app/ToggleManager$19;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;

    .line 1080
    new-instance v5, Lmiui/app/ToggleManager$20;

    invoke-direct {v5, p0}, Lmiui/app/ToggleManager$20;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 338
    iput-object p1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    .line 339
    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 340
    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lmiui/app/ToggleManager;->mResource:Landroid/content/res/Resources;

    .line 341
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    .line 342
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    .line 343
    invoke-static {}, Landroid/app/MobileDataUtils;->getInstance()Landroid/app/MobileDataUtils;

    move-result-object v5

    iput-object v5, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    .line 345
    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    sput-object v5, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 346
    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v8, "vibrator"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    sput-object v5, Lmiui/app/ToggleManager;->mVibrator:Landroid/os/Vibrator;

    .line 348
    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 350
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    sput-boolean v5, Lmiui/app/ToggleManager;->mHasMobileDataFeature:Z

    .line 352
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResource:Landroid/content/res/Resources;

    const v8, 0xa070001    # 6.500014E-33f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    .line 353
    invoke-direct {p0}, Lmiui/app/ToggleManager;->queryBrightnessStatus()V

    .line 356
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v8, "com.android.phone"

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 357
    .local v3, "phoneResources":Landroid/content/res/Resources;
    const-string v5, "config_preferred_network_type_when_data_enabled"

    const-string v8, "bool"

    const-string v9, "com.android.phone"

    invoke-virtual {v3, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lmiui/app/ToggleManager;->mEnableNetType:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v3    # "phoneResources":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "mWifiRegexs":[Ljava/lang/String;
    array-length v5, v2

    if-eqz v5, :cond_2

    move v4, v6

    .line 364
    .local v4, "wifiAvailable":Z
    :goto_1
    if-eqz v4, :cond_0

    .line 365
    new-instance v5, Lmiui/app/WifiApEnabler;

    invoke-direct {v5, p1, p0}, Lmiui/app/WifiApEnabler;-><init>(Landroid/content/Context;Lmiui/app/ToggleManager;)V

    sput-object v5, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    .line 368
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 369
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateBluetoothToggle()V

    .line 377
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateRingerToggle()V

    .line 378
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateWifiToggle()V

    .line 380
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "status_bar_toggle_list_order"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 384
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "status_bar_toggle_page_order"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 389
    const v5, 0x7fffffff

    iget-object v8, p0, Lmiui/app/ToggleManager;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v5, v8}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lmiui/app/ToggleManager;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 392
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateAdvancedSyncToggle()V

    .line 393
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateSyncToggle()V

    .line 395
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "accelerometer_rotation"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 399
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateAccelerometerToggle()V

    .line 401
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "airplane_mode_on"

    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mFlightModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 405
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateFlightModeToggle()V

    .line 407
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "drive_mode_drive_mode"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mDriveModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 411
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateDriveModeToggle()V

    .line 413
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "location_providers_allowed"

    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 417
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateGpsToggle()V

    .line 419
    iget-object v5, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v9}, Landroid/app/MobileDataUtils;->registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 421
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "mobile_policy"

    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 425
    iget-object v5, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 427
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "privacy_mode_enabled"

    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mPrivacyModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 431
    new-instance v5, Landroid/security/ChooseLockSettingsHelper;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lmiui/app/ToggleManager;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    .line 432
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePrivacyModeToggle()V

    .line 434
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "access_control_lock_enabled"

    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mACObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 438
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateACToggle()V

    .line 440
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "screen_brightness"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 444
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "screen_auto_brightness_adj"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 448
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "screen_brightness_mode"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 452
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBrightnessToggle()V

    .line 454
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "screen_buttons_state"

    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 458
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateScreenButtonState()V

    .line 460
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "torch_state"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 464
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateTorchToggle()V

    .line 466
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "vibrate_in_silent"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 470
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "vibrate_in_normal"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 474
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateVibrateToggle()V

    .line 476
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "power_mode"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 480
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePowerModeToggle()V

    .line 482
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "quiet_mode_enable"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 486
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateQuietModeToggle()V

    .line 488
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "screen_paper_mode_enabled"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 492
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePaperModeToggle()V

    .line 494
    invoke-direct {p0}, Lmiui/app/ToggleManager;->supportZenMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 495
    iget-object v5, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "zen_mode"

    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/ToggleManager;->mZenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 499
    iget-object v5, p0, Lmiui/app/ToggleManager;->mZenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 501
    :cond_1
    return-void

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "wifiAvailable":Z
    :cond_2
    move v4, v7

    .line 363
    goto/16 :goto_1

    .line 359
    .end local v2    # "mWifiRegexs":[Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lmiui/app/ToggleManager;)Lmiui/app/ToggleManager$WifiStateTracker;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/app/ToggleManager;->mWifiState:Lmiui/app/ToggleManager$WifiStateTracker;

    return-object v0
.end method

.method static synthetic access$1000(Lmiui/app/ToggleManager;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1100(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateTorchToggle()V

    return-void
.end method

.method static synthetic access$1200(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePrivacyModeToggle()V

    return-void
.end method

.method static synthetic access$1300(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateACToggle()V

    return-void
.end method

.method static synthetic access$1400(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateScreenButtonState()V

    return-void
.end method

.method static synthetic access$1500(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateGpsToggle()V

    return-void
.end method

.method static synthetic access$1600(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateAccelerometerToggle()V

    return-void
.end method

.method static synthetic access$1700(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->queryBrightnessStatus()V

    return-void
.end method

.method static synthetic access$1800(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBrightnessToggle()V

    return-void
.end method

.method static synthetic access$1900(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePowerModeToggle()V

    return-void
.end method

.method static synthetic access$200(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateFlightModeToggle()V

    return-void
.end method

.method static synthetic access$2000(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateQuietModeToggle()V

    return-void
.end method

.method static synthetic access$2100(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePaperModeToggle()V

    return-void
.end method

.method static synthetic access$2200(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateAdvancedSyncToggle()V

    return-void
.end method

.method static synthetic access$2300(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateSyncToggle()V

    return-void
.end method

.method static synthetic access$2400(Lmiui/app/ToggleManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/app/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Lmiui/app/ToggleManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$302(Lmiui/app/ToggleManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    return p1
.end method

.method static synthetic access$400(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateDataToggle()V

    return-void
.end method

.method static synthetic access$500(Lmiui/app/ToggleManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateDriveModeToggle()V

    return-void
.end method

.method static synthetic access$700(Lmiui/app/ToggleManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lmiui/app/ToggleManager;)Landroid/app/MobileDataUtils;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    return-object v0
.end method

.method static synthetic access$902(Lmiui/app/ToggleManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    return p1
.end method

.method private static addIfUnselected(Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 743
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_0
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lmiui/app/ToggleManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    sget-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Lmiui/app/ToggleManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/ToggleManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    .line 334
    :cond_0
    sget-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    return-object v0
.end method

.method private ensureBluetoothAdapter()Z
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 1334
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1336
    :cond_0
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static filterToggle(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v3, 0x11

    const/4 v2, 0x0

    .line 693
    invoke-static {p0}, Lmiui/app/ToggleManager;->createInstance(Landroid/content/Context;)Lmiui/app/ToggleManager;

    .line 695
    const-string v1, "support_power_mode"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 696
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 699
    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_1

    .line 700
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 703
    :cond_1
    sget-object v1, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-nez v1, :cond_2

    .line 704
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 707
    :cond_2
    invoke-static {p0}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 708
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 711
    :cond_3
    sget-boolean v1, Lmiui/app/ToggleManager;->mHasMobileDataFeature:Z

    if-nez v1, :cond_4

    .line 712
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 713
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 714
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 715
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 716
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 719
    :cond_4
    sget-object v1, Lmiui/app/ToggleManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_5

    .line 720
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 723
    :cond_5
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 725
    sget-boolean v1, Lmiui/os/Build;->IS_MIPAD:Z

    if-eqz v1, :cond_6

    .line 727
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 730
    :cond_6
    const-string v1, "support_screen_paper_mode"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_7

    .line 731
    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 736
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.miui.voiceassist"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :goto_0
    return-void

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getAllToggles(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x1a

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 560
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 584
    return-object v0
.end method

.method public static getDividerFixedPosition(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 605
    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x9030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getGeneralImage(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 829
    sget-object v0, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getImage(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 798
    sget-object v0, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 823
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Lmiui/app/ToggleManager;->getImage(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 824
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v1, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    aget v1, v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 825
    return-object v0
.end method

.method public static getName(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 786
    sget-object v0, Lmiui/app/ToggleManager;->sToggleNames:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getStatus(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 802
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 790
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 791
    .local v0, "statusName":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 792
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "statusName":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 794
    :goto_0
    return-object v1

    .restart local v0    # "statusName":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getTextColor(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 811
    invoke-static {p0}, Lmiui/app/ToggleManager;->getStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lmiui/app/ToggleManager;->sTextColorEnable:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lmiui/app/ToggleManager;->sTextColorDisable:I

    goto :goto_0
.end method

.method public static getToggleIdFromString(Ljava/lang/String;)I
    .locals 1
    .param p0, "toggleString"    # Ljava/lang/String;

    .prologue
    .line 770
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    const/4 v0, -0x1

    .line 773
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static getToggleOrderSettingID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 609
    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "status_bar_toggle_list_order"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "status_bar_toggle_page_order"

    goto :goto_0
.end method

.method public static getToggleStringFromId(I)Ljava/lang/String;
    .locals 3
    .param p0, "toggleId"    # I

    .prologue
    .line 777
    sget-object v2, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 778
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 779
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 782
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 536
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {p0}, Lmiui/app/ToggleManager;->getToggleOrderSettingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 540
    .local v4, "toggleList":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 541
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 542
    .local v5, "toggles":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_1

    .line 544
    :try_start_0
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 545
    .local v2, "id":I
    invoke-static {v2}, Lmiui/app/ToggleManager;->getName(I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 546
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    .end local v2    # "id":I
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 554
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v5    # "toggles":[Ljava/lang/String;
    :cond_1
    invoke-static {p0, v3}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 555
    return-object v3
.end method

.method public static initDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 833
    const/16 v0, 0x13

    if-ne v0, p0, :cond_0

    .line 834
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 835
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 838
    :cond_0
    return-void
.end method

.method private isAutoSync()Z
    .locals 1

    .prologue
    .line 1672
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method public static isListStyle(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method private longClickScreenshot()Z
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 1967
    const/4 v8, 0x0

    .line 1968
    .local v8, "path":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    sget-object v12, Lmiui/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v12}, Lmiui/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    const-string v13, "Screenshots"

    invoke-direct {v10, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1970
    .local v10, "screenShotFolder":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1972
    new-instance v9, Lmiui/app/ToggleManager$22;

    invoke-direct {v9, p0}, Lmiui/app/ToggleManager$22;-><init>(Lmiui/app/ToggleManager;)V

    .line 1984
    .local v9, "pictureFilter":Ljava/io/FilenameFilter;
    invoke-virtual {v10, v9}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 1985
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 2003
    .end local v2    # "files":[Ljava/io/File;
    .end local v9    # "pictureFilter":Ljava/io/FilenameFilter;
    :cond_0
    :goto_0
    return v11

    .line 1988
    .restart local v2    # "files":[Ljava/io/File;
    .restart local v9    # "pictureFilter":Ljava/io/FilenameFilter;
    :cond_1
    const-wide/16 v6, 0x0

    .line 1989
    .local v6, "maxLastModifed":J
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 1990
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v12, v12, v6

    if-lez v12, :cond_2

    .line 1991
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 1992
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 1989
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1997
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "maxLastModifed":J
    .end local v9    # "pictureFilter":Ljava/io/FilenameFilter;
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1999
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2000
    .local v4, "intent":Landroid/content/Intent;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "image/*"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2001
    const/high16 v11, 0x10000000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2002
    iget-object v11, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2003
    const/4 v11, 0x1

    goto :goto_0
.end method

.method private queryBrightnessStatus()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1054
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    .line 1060
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    const/16 v2, 0x66

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    .line 1062
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    sget v1, Lmiui/app/ToggleManager;->RANGE:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoLevel:F

    .line 1063
    return-void

    :cond_0
    move v0, v1

    .line 1054
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private setBrightnessMode()V
    .locals 3

    .prologue
    .line 1430
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness_mode"

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1435
    return-void

    .line 1430
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setTextColor(II)V
    .locals 0
    .param p0, "enableColor"    # I
    .param p1, "disableColor"    # I

    .prologue
    .line 806
    sput p0, Lmiui/app/ToggleManager;->sTextColorEnable:I

    .line 807
    sput p1, Lmiui/app/ToggleManager;->sTextColorDisable:I

    .line 808
    return-void
.end method

.method private showToast(II)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "length"    # I

    .prologue
    .line 1589
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmiui/app/ToggleManager;->showToast(Ljava/lang/CharSequence;I)V

    .line 1590
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "length"    # I

    .prologue
    .line 1593
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1594
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    .line 1595
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1596
    return-void
.end method

.method private shutdown(Z)V
    .locals 8
    .param p1, "isReboot"    # Z

    .prologue
    .line 1885
    if-eqz p1, :cond_0

    const v4, 0xa0b0040

    .line 1888
    .local v4, "titleId":I
    :goto_0
    if-eqz p1, :cond_1

    const v3, 0xa0b004d

    .line 1892
    .local v3, "positiveButtonId":I
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const v6, 0x80d0033

    invoke-direct {v2, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1895
    .local v2, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const v5, 0x1010355

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lmiui/app/ToggleManager$21;

    invoke-direct {v6, p0, p1}, Lmiui/app/ToggleManager$21;-><init>(Lmiui/app/ToggleManager;Z)V

    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1930
    .local v1, "dialog":Landroid/app/AlertDialog;
    new-instance v0, Lmiui/app/ToggleManager$CloseDialogReceiver;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, v1}, Lmiui/app/ToggleManager$CloseDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 1931
    .local v0, "closer":Lmiui/app/ToggleManager$CloseDialogReceiver;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1932
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7da

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1933
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1934
    return-void

    .line 1885
    .end local v0    # "closer":Lmiui/app/ToggleManager$CloseDialogReceiver;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "positiveButtonId":I
    .end local v4    # "titleId":I
    :cond_0
    const v4, 0xa0b003e

    goto :goto_0

    .line 1888
    .restart local v4    # "titleId":I
    :cond_1
    const v3, 0xa0b004e

    goto :goto_1
.end method

.method private supportZenMode()Z
    .locals 2

    .prologue
    .line 504
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toggleAccelerometer()V
    .locals 3

    .prologue
    .line 1538
    :try_start_0
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 1540
    .local v0, "wm":Landroid/view/IWindowManager;
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-nez v1, :cond_0

    .line 1541
    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V

    .line 1550
    .end local v0    # "wm":Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 1543
    .restart local v0    # "wm":Landroid/view/IWindowManager;
    :cond_0
    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1544
    const v1, 0x9040031

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lmiui/app/ToggleManager;->showToast(II)V

    .line 1546
    :cond_1
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1548
    .end local v0    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private toggleAdvancedSync()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1651
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v2

    .line 1652
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v3

    .line 1653
    .local v1, "isActive":Z
    :goto_0
    if-nez v1, :cond_2

    .line 1654
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1655
    .local v0, "extras":Landroid/os/Bundle;
    invoke-direct {p0}, Lmiui/app/ToggleManager;->isAutoSync()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1656
    const-string v4, "force"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1658
    :cond_0
    invoke-static {v5, v5, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1662
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_1
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateAdvancedSyncToggle()V

    .line 1663
    return-void

    .line 1652
    .end local v1    # "isActive":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1660
    .restart local v1    # "isActive":Z
    :cond_2
    invoke-static {v5, v5}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private toggleAutoBrightness()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1418
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v2, :cond_0

    .line 1419
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    .line 1425
    :goto_0
    invoke-direct {p0}, Lmiui/app/ToggleManager;->setBrightnessMode()V

    .line 1426
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->getCurBrightness()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/ToggleManager;->applyBrightness(IZ)V

    .line 1427
    return-void

    .line 1422
    :cond_0
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    goto :goto_0
.end method

.method private toggleBluetooth()V
    .locals 1

    .prologue
    .line 1340
    invoke-direct {p0}, Lmiui/app/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v0, :cond_1

    .line 1342
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 1343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnabling:Z

    .line 1349
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnabling:Z

    goto :goto_0
.end method

.method private toggleBrightness()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x1

    .line 1396
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v0, :cond_1

    .line 1397
    sget v0, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    iput v0, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    .line 1398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    .line 1413
    :cond_0
    :goto_0
    invoke-direct {p0}, Lmiui/app/ToggleManager;->setBrightnessMode()V

    .line 1414
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->getCurBrightness()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lmiui/app/ToggleManager;->applyBrightness(IZ)V

    .line 1415
    return-void

    .line 1400
    :cond_1
    iget v0, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    sget v1, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    if-gt v0, v1, :cond_2

    .line 1401
    const/16 v0, 0x66

    iput v0, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    goto :goto_0

    .line 1403
    :cond_2
    iget v0, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    if-ge v0, v3, :cond_3

    .line 1404
    iput v3, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    goto :goto_0

    .line 1407
    :cond_3
    sget v0, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    iput v0, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    .line 1408
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    if-eqz v0, :cond_0

    .line 1409
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    goto :goto_0
.end method

.method private toggleData()Z
    .locals 7

    .prologue
    .line 1497
    const/4 v1, 0x0

    .line 1498
    .local v1, "result":Z
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    if-eqz v4, :cond_2

    .line 1499
    iget-object v5, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v5, v6, v4}, Landroid/app/MobileDataUtils;->enableMobileData(Landroid/content/Context;Z)V

    .line 1513
    :cond_0
    :goto_1
    return v1

    .line 1499
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1501
    :cond_2
    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/app/MobileDataUtils;->getSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1502
    .local v2, "subscriberId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1503
    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 1504
    .local v3, "template":Landroid/net/NetworkTemplate;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1505
    .local v0, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.miui.networkassistant"

    const-string v6, "com.miui.networkassistant.ui.activity.NetworkOverLimitActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1507
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1508
    const-string v4, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1509
    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1510
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private toggleDriveMode()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1728
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mDriveMode:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mDriveMode:Z

    .line 1734
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "drive_mode_drive_mode"

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mDriveMode:Z

    if-eqz v5, :cond_1

    :goto_1
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1735
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mDriveMode:Z

    if-eqz v1, :cond_2

    .line 1736
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.app.ExtraStatusBarManager.action_enter_drive_mode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1737
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1742
    :goto_2
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    move v1, v3

    .line 1728
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1734
    goto :goto_1

    .line 1739
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.app.ExtraStatusBarManager.action_leave_drive_mode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1740
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private toggleFlightMode()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1704
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    .line 1705
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "airplane_mode_on"

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-eqz v5, :cond_1

    :goto_1
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1706
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1707
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1708
    const-string v1, "state"

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1709
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1710
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    move v1, v3

    .line 1704
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1705
    goto :goto_1
.end method

.method private toggleGps()V
    .locals 3

    .prologue
    .line 1619
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "gps"

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1621
    return-void

    .line 1619
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private togglePaperMode()V
    .locals 3

    .prologue
    .line 1869
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    .line 1870
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_paper_mode_enabled"

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1872
    return-void

    .line 1869
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private togglePowerMode()V
    .locals 4

    .prologue
    .line 1821
    const-string v1, "high"

    iget-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1822
    const-string v1, "middle"

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    .line 1827
    :goto_0
    const-string v1, "persist.sys.aries.power_profile"

    iget-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "power_mode"

    iget-object v3, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1830
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.POWER_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1831
    .local v0, "powerModeChange":Landroid/content/Intent;
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1832
    return-void

    .line 1824
    .end local v0    # "powerModeChange":Landroid/content/Intent;
    :cond_0
    const-string v1, "high"

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    goto :goto_0
.end method

.method private togglePrivacyMode()Z
    .locals 7

    .prologue
    const/high16 v6, 0x20000000

    const/high16 v5, 0x10000000

    const/high16 v4, 0x4000000

    .line 1762
    const/4 v1, 0x0

    .line 1763
    .local v1, "result":Z
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mPrivacyMode:Z

    if-nez v2, :cond_0

    .line 1764
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1765
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.PrivacyModeDialog"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1766
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1767
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1768
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1769
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1785
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 1771
    :cond_0
    iget-object v2, p0, Lmiui/app/ToggleManager;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/app/ToggleManager;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Landroid/security/ChooseLockSettingsHelper;->isPasswordForPrivacyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1773
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.app.action.CONFIRM_ACCESS_CONTROL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1774
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "confirm_purpose"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1776
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1777
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1778
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1779
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1780
    const/4 v1, 0x1

    .line 1781
    goto :goto_0

    .line 1782
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lmiui/app/ToggleManager;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    goto :goto_0
.end method

.method private toggleQuietMode()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1848
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    .line 1849
    invoke-direct {p0}, Lmiui/app/ToggleManager;->supportZenMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1850
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "zen_mode"

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1854
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 1848
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1850
    goto :goto_1

    .line 1852
    :cond_2
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;Z)V

    goto :goto_2
.end method

.method private toggleRinger()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1566
    invoke-direct {p0}, Lmiui/app/ToggleManager;->supportZenMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1567
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mSilentEnabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mSilentEnabled:Z

    .line 1568
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "zen_mode"

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mSilentEnabled:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x3

    :cond_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1573
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1567
    goto :goto_0

    .line 1571
    :cond_2
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiui/util/AudioManagerHelper;->toggleSilent(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method private toggleScreenButtonState()V
    .locals 7

    .prologue
    const v4, 0x9040032

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2007
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    .line 2009
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_buttons_has_been_disabled"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 2010
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_buttons_has_been_disabled"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2011
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const v6, 0x80d0033

    invoke-direct {v1, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2016
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x7da

    invoke-virtual {v1, v4}, Landroid/view/Window;->setType(I)V

    .line 2017
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2026
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :goto_1
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_buttons_state"

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v5, :cond_3

    :goto_2
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2029
    return-void

    :cond_0
    move v1, v3

    .line 2007
    goto :goto_0

    .line 2020
    :cond_1
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v1, :cond_2

    move v1, v4

    :goto_3
    invoke-direct {p0, v1, v3}, Lmiui/app/ToggleManager;->showToast(II)V

    goto :goto_1

    :cond_2
    const v1, 0x9040033

    goto :goto_3

    :cond_3
    move v2, v3

    .line 2026
    goto :goto_2
.end method

.method private toggleScreenshot()V
    .locals 3

    .prologue
    .line 1962
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1963
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1964
    return-void
.end method

.method private toggleSync()V
    .locals 1

    .prologue
    .line 1636
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 1637
    return-void

    .line 1636
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toggleTorch()V
    .locals 3

    .prologue
    .line 1814
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1815
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "miui.intent.extra.IS_TOGGLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1816
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1817
    return-void
.end method

.method private toggleVibrate()V
    .locals 1

    .prologue
    .line 1603
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->toggleVibrateSetting(Landroid/content/Context;)V

    .line 1604
    return-void
.end method

.method private updateACToggle()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 1797
    iget-object v1, p0, Lmiui/app/ToggleManager;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    .line 1798
    .local v0, "enable":Z
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1799
    if-eqz v0, :cond_0

    const v1, 0x9020001

    :goto_0
    invoke-direct {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1802
    return-void

    .line 1799
    :cond_0
    const/high16 v1, 0x9020000

    goto :goto_0
.end method

.method private updateAccelerometerToggle()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1553
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    .line 1555
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v4, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1556
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-eqz v0, :cond_2

    const v0, 0x9020020

    :goto_2
    invoke-direct {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1559
    return-void

    :cond_0
    move v0, v2

    .line 1553
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1555
    goto :goto_1

    .line 1556
    :cond_2
    const v0, 0x9020021

    goto :goto_2
.end method

.method private updateAdvancedSyncToggle()V
    .locals 3

    .prologue
    .line 1666
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v1

    .line 1667
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1668
    .local v0, "isActive":Z
    :goto_0
    invoke-direct {p0}, Lmiui/app/ToggleManager;->isAutoSync()Z

    move-result v2

    invoke-direct {p0, v2, v0}, Lmiui/app/ToggleManager;->updateAdvancedSyncToggle(ZZ)V

    .line 1669
    return-void

    .line 1667
    .end local v0    # "isActive":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAdvancedSyncToggle(ZZ)V
    .locals 4
    .param p1, "isAuto"    # Z
    .param p2, "isActive"    # Z

    .prologue
    const v2, 0x904001c

    const/16 v3, 0x13

    .line 1676
    const/4 v0, 0x0

    .line 1677
    .local v0, "iconId":I
    const/4 v1, 0x0

    .line 1678
    .local v1, "statusNameId":I
    if-eqz p1, :cond_2

    .line 1679
    if-eqz p2, :cond_0

    const v0, 0x9020027

    .line 1682
    :goto_0
    if-eqz p2, :cond_1

    move v1, v2

    .line 1694
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lmiui/app/ToggleManager;->updateToggleStatusName(ILjava/lang/Object;)V

    .line 1695
    invoke-virtual {p0, v3, p2}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1696
    invoke-direct {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1697
    return-void

    .line 1679
    :cond_0
    const v0, 0x9020028

    goto :goto_0

    .line 1682
    :cond_1
    const v1, 0x904001a

    goto :goto_1

    .line 1687
    :cond_2
    if-eqz p2, :cond_3

    const v0, 0x902002c

    .line 1690
    :goto_2
    if-eqz p2, :cond_4

    move v1, v2

    :goto_3
    goto :goto_1

    .line 1687
    :cond_3
    const v0, 0x9020031

    goto :goto_2

    .line 1690
    :cond_4
    const v1, 0x904001b

    goto :goto_3
.end method

.method private updateBrightnessToggle()V
    .locals 6

    .prologue
    const/16 v5, 0x16

    const/4 v4, 0x4

    .line 1372
    const/4 v1, 0x0

    .local v1, "brightnessResId":I
    const/4 v0, 0x0

    .line 1373
    .local v0, "autoResId":I
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v2, :cond_0

    .line 1374
    const v1, 0x9020004

    move v0, v1

    .line 1387
    :goto_0
    const v2, 0x9020007

    if-ne v1, v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v4, v2}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1389
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    invoke-virtual {p0, v5, v2}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1390
    invoke-direct {p0, v4, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1391
    invoke-direct {p0, v5, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1392
    return-void

    .line 1376
    :cond_0
    const v0, 0x9020006

    .line 1377
    const v1, 0x9020007

    .line 1378
    iget v2, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    sget v3, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    if-gt v2, v3, :cond_1

    .line 1379
    const v1, 0x9020007

    goto :goto_0

    .line 1380
    :cond_1
    iget v2, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    const/16 v3, 0xff

    if-ge v2, v3, :cond_2

    .line 1381
    const v1, 0x9020005

    goto :goto_0

    .line 1383
    :cond_2
    const v1, 0x9020008

    goto :goto_0

    .line 1387
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private updateDataToggle()V
    .locals 7

    .prologue
    const v6, 0x9020016

    const/16 v4, 0x7d

    const/16 v5, 0x11

    const/4 v1, 0x1

    .line 1517
    iget-object v2, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/app/MobileDataUtils;->isMobileEnable(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    .line 1518
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 1519
    .local v0, "isDataEnabled":Z
    :goto_0
    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1520
    if-eqz v0, :cond_2

    const v2, 0x902000a

    :goto_1
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    if-eqz v3, :cond_3

    :cond_0
    move v3, v4

    :goto_2
    invoke-virtual {p0, v1, v2, v3}, Lmiui/app/ToggleManager;->updateToggleImage(III)V

    .line 1524
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mEnableNetType:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 1525
    invoke-virtual {p0, v5, v6, v4}, Lmiui/app/ToggleManager;->updateToggleImage(III)V

    .line 1530
    :goto_3
    return-void

    .line 1518
    .end local v0    # "isDataEnabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1520
    .restart local v0    # "isDataEnabled":Z
    :cond_2
    const v2, 0x9020009

    goto :goto_1

    :cond_3
    const/16 v3, 0xff

    goto :goto_2

    .line 1528
    :cond_4
    invoke-direct {p0, v5, v6}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    goto :goto_3
.end method

.method private updateDriveModeToggle()V
    .locals 5

    .prologue
    const/16 v4, 0x15

    .line 1746
    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "drive_mode_drive_mode"

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mDriveMode:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1747
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mDriveMode:Z

    if-eqz v1, :cond_1

    .line 1748
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.app.ExtraStatusBarManager.action_enter_drive_mode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1749
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1754
    :goto_1
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mDriveMode:Z

    invoke-virtual {p0, v4, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1755
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mDriveMode:Z

    if-eqz v1, :cond_2

    const v1, 0x902000d

    :goto_2
    invoke-direct {p0, v4, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1758
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateDataToggle()V

    .line 1759
    return-void

    .line 1746
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1751
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.app.ExtraStatusBarManager.action_leave_drive_mode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1752
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1755
    :cond_2
    const v1, 0x902000c

    goto :goto_2
.end method

.method private updateFlightModeToggle()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1713
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-gt v2, v3, :cond_1

    .line 1714
    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    .line 1719
    :goto_1
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1720
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-eqz v0, :cond_3

    const v0, 0x902000f

    :goto_2
    invoke-direct {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1724
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateDataToggle()V

    .line 1725
    return-void

    :cond_0
    move v0, v1

    .line 1714
    goto :goto_0

    .line 1717
    :cond_1
    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    :goto_3
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_3

    .line 1720
    :cond_3
    const v0, 0x902000e

    goto :goto_2
.end method

.method private updateGpsToggle()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 1624
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    .line 1626
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1627
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    if-eqz v0, :cond_0

    const v0, 0x9020011

    :goto_0
    invoke-direct {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1630
    return-void

    .line 1627
    :cond_0
    const v0, 0x9020010

    goto :goto_0
.end method

.method public static updateImageView(ILandroid/widget/ImageView;)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 841
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/app/ToggleManager;->getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 842
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 843
    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->initDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 844
    return-void
.end method

.method private updatePaperModeToggle()V
    .locals 4

    .prologue
    const/16 v3, 0x1a

    .line 1875
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_paper_mode_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    .line 1878
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1879
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    if-eqz v0, :cond_0

    const v0, 0x9020018

    :goto_0
    invoke-direct {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1882
    return-void

    .line 1879
    :cond_0
    const v0, 0x9020017

    goto :goto_0
.end method

.method private updatePowerModeToggle()V
    .locals 5

    .prologue
    const/16 v4, 0x17

    .line 1835
    const/4 v1, 0x0

    .line 1836
    .local v1, "resId":I
    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "power_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    .line 1837
    iget-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1838
    const-string v2, "middle"

    iput-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    .line 1840
    :cond_0
    const-string v2, "high"

    iget-object v3, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1841
    .local v0, "isHigh":Z
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1842
    if-eqz v0, :cond_1

    const v2, 0x902001a

    :goto_0
    invoke-direct {p0, v4, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1845
    return-void

    .line 1842
    :cond_1
    const v2, 0x9020019

    goto :goto_0
.end method

.method private updatePrivacyModeToggle()V
    .locals 2

    .prologue
    const/16 v1, 0xe

    .line 1789
    iget-object v0, p0, Lmiui/app/ToggleManager;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mPrivacyMode:Z

    .line 1790
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPrivacyMode:Z

    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1791
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPrivacyMode:Z

    if-eqz v0, :cond_0

    const v0, 0x902001c

    :goto_0
    invoke-direct {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1794
    return-void

    .line 1791
    :cond_0
    const v0, 0x902001b

    goto :goto_0
.end method

.method private updateQuietModeToggle()V
    .locals 5

    .prologue
    const/16 v4, 0x19

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1857
    invoke-direct {p0}, Lmiui/app/ToggleManager;->supportZenMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1858
    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "zen_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    .line 1862
    :goto_1
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1863
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    if-eqz v0, :cond_2

    const v0, 0x902001e

    :goto_2
    invoke-direct {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1866
    return-void

    :cond_0
    move v0, v1

    .line 1858
    goto :goto_0

    .line 1860
    :cond_1
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    goto :goto_1

    .line 1863
    :cond_2
    const v0, 0x902001d

    goto :goto_2
.end method

.method private updateScreenButtonState()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v0, 0x0

    .line 2032
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_buttons_state"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    .line 2034
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 2035
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v0, :cond_1

    const v0, 0x9020022

    :goto_0
    invoke-direct {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 2038
    return-void

    .line 2035
    :cond_1
    const v0, 0x9020023

    goto :goto_0
.end method

.method private updateSyncToggle()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1640
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 1641
    .local v0, "isSyncOn":Z
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1642
    if-eqz v0, :cond_0

    const v1, 0x9020032

    :goto_0
    invoke-direct {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1645
    return-void

    .line 1642
    :cond_0
    const v1, 0x9020031

    goto :goto_0
.end method

.method public static updateTextView(ILandroid/widget/TextView;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 847
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    invoke-static {p0}, Lmiui/app/ToggleManager;->getTextColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 849
    return-void
.end method

.method private updateToggleImage(II)V
    .locals 1
    .param p1, "toggleId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 1089
    const/16 v0, 0xff

    invoke-virtual {p0, p1, p2, v0}, Lmiui/app/ToggleManager;->updateToggleImage(III)V

    .line 1090
    return-void
.end method

.method private updateTorchToggle()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1805
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    .line 1807
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1808
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    if-eqz v0, :cond_1

    const v0, 0x9020034

    :goto_1
    invoke-direct {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1811
    return-void

    :cond_0
    move v0, v1

    .line 1805
    goto :goto_0

    .line 1808
    :cond_1
    const v0, 0x9020033

    goto :goto_1
.end method

.method private static validateToggleList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 625
    const/16 v1, 0xf

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 626
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 627
    invoke-static {p1, v4}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 628
    invoke-static {p1, v3}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 629
    const/4 v1, 0x7

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 630
    const/16 v1, 0x1a

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 631
    const/4 v1, 0x6

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 632
    const/4 v1, 0x3

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 633
    const/16 v1, 0x12

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 634
    const/16 v1, 0x9

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 635
    const/16 v1, 0x19

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 636
    invoke-static {p1, v2}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 637
    const/4 v1, 0x2

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 638
    const/16 v1, 0x8

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 639
    const/16 v1, 0x16

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 640
    const/16 v1, 0x10

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 641
    const/16 v1, 0x11

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 642
    const/16 v1, 0xe

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 643
    const/16 v1, 0xb

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 644
    const/16 v1, 0x14

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 645
    const/16 v1, 0xa

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 646
    const/16 v1, 0x15

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 647
    const/16 v1, 0xc

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 648
    const/16 v1, 0xd

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 649
    const/16 v1, 0x17

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 650
    const/16 v1, 0x18

    invoke-static {p1, v1}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 652
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 655
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 656
    .local v0, "dividerIndex":I
    if-ge v0, v3, :cond_0

    .line 657
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 658
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 660
    :cond_0
    return-void
.end method

.method private static validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 615
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->validateToggleList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 621
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->validateTogglePage(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private static validateTogglePage(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 664
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 665
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 666
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 667
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 668
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 669
    const/16 v0, 0xf

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 670
    const/16 v0, 0x19

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 671
    const/16 v0, 0x16

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 672
    const/16 v0, 0xb

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 674
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 675
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 676
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 677
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 678
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 679
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 680
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 681
    const/16 v0, 0xe

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 682
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 683
    const/16 v0, 0x17

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 684
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 685
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 687
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 689
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 690
    return-void
.end method


# virtual methods
.method public applyBrightness(IZ)V
    .locals 11
    .param p1, "brightness"    # I
    .param p2, "write"    # Z

    .prologue
    .line 1444
    const/4 v5, 0x0

    .line 1445
    .local v5, "valf":F
    const/4 v0, 0x0

    .line 1447
    .local v0, "brightnessValue":I
    :try_start_0
    const-string v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 1448
    .local v2, "power":Landroid/os/IPowerManager;
    const/4 v3, 0x0

    .line 1449
    .local v3, "setAutoBrightnessAdjustmentMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 1450
    .local v4, "setBrightnessMethod":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1451
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-gt v6, v7, :cond_1

    .line 1452
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setAutoBrightnessAdjustment"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1454
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setBacklightBrightness"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1461
    :goto_0
    iget-boolean v6, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v6, :cond_2

    .line 1462
    if-eqz v3, :cond_0

    .line 1463
    sget-boolean v6, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v6, :cond_0

    .line 1464
    int-to-float v6, p1

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    sget v7, Lmiui/app/ToggleManager;->RANGE:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v5, v6, v7

    .line 1465
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    if-eqz p2, :cond_0

    .line 1467
    iget-object v6, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "screen_auto_brightness_adj"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 1490
    .end local v2    # "power":Landroid/os/IPowerManager;
    .end local v3    # "setAutoBrightnessAdjustmentMethod":Ljava/lang/reflect/Method;
    .end local v4    # "setBrightnessMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-void

    .line 1456
    .restart local v2    # "power":Landroid/os/IPowerManager;
    .restart local v3    # "setAutoBrightnessAdjustmentMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "setBrightnessMethod":Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setTemporaryScreenAutoBrightnessAdjustmentSettingOverride"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1458
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setTemporaryScreenBrightnessSettingOverride"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    goto :goto_0

    .line 1472
    :cond_2
    if-eqz v4, :cond_0

    .line 1473
    sget v6, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    add-int v0, p1, v6

    .line 1474
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    if-eqz p2, :cond_0

    .line 1476
    iget-object v6, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "screen_brightness"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 1481
    .end local v2    # "power":Landroid/os/IPowerManager;
    .end local v3    # "setAutoBrightnessAdjustmentMethod":Ljava/lang/reflect/Method;
    .end local v4    # "setBrightnessMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1482
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 1483
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 1484
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 1485
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 1486
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 1487
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 1488
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public getCurBrightness()I
    .locals 2

    .prologue
    .line 1438
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoLevel:F

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_0
    iget v0, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    sget v1, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0
.end method

.method public isBrightnessAutoMode()Z
    .locals 1

    .prologue
    .line 2041
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 509
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 510
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 511
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 512
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 513
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPrivacyModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 514
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mACObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 515
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 516
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 517
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 518
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 519
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 520
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 521
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mDriveModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 522
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 523
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 524
    invoke-direct {p0}, Lmiui/app/ToggleManager;->supportZenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mZenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 527
    :cond_0
    iget-object v0, p0, Lmiui/app/ToggleManager;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 528
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 529
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 530
    sget-object v0, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v0, :cond_1

    .line 531
    sget-object v0, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v0}, Lmiui/app/WifiApEnabler;->unregisterReceiver()V

    .line 533
    :cond_1
    return-void
.end method

.method public performToggle(I)Z
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x1

    .line 1110
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/MiuiStatusBarManager;->isCollapseAfterClicked(Landroid/content/Context;)Z

    move-result v2

    .line 1111
    .local v2, "result":Z
    packed-switch p1, :pswitch_data_0

    .line 1224
    :cond_0
    :goto_0
    return v2

    .line 1113
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1114
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lmiui/app/ToggleManager;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1115
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.ConfirmAccessControl"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    const-string v3, "confirm_purpose"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1121
    :goto_1
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1122
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1123
    const/4 v2, 0x1

    .line 1124
    goto :goto_0

    .line 1119
    :cond_1
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.ChooseAccessControl"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1127
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleAdvancedSync()V

    goto :goto_0

    .line 1130
    :pswitch_2
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleAutoBrightness()V

    .line 1131
    const/4 v2, 0x0

    .line 1132
    goto :goto_0

    .line 1134
    :pswitch_3
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleBluetooth()V

    goto :goto_0

    .line 1137
    :pswitch_4
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleBrightness()V

    .line 1138
    const/4 v2, 0x0

    .line 1139
    goto :goto_0

    .line 1141
    :pswitch_5
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    if-nez v3, :cond_0

    .line 1142
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleData()Z

    move-result v0

    .line 1143
    .local v0, "dataResult":Z
    or-int/2addr v2, v0

    .line 1144
    goto :goto_0

    .line 1147
    .end local v0    # "dataResult":Z
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1148
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.settings.ToggleArrangement"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    const/high16 v3, 0x14000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1150
    const-string v3, "com.android.systemui.settings.EXTRA_LOCATE_DIVIDER"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1151
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1152
    const/4 v2, 0x1

    .line 1153
    goto :goto_0

    .line 1156
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_7
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleFlightMode()V

    goto :goto_0

    .line 1159
    :pswitch_8
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleGps()V

    goto :goto_0

    .line 1162
    :pswitch_9
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    goto/16 :goto_0

    .line 1166
    :pswitch_a
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleRinger()V

    goto/16 :goto_0

    .line 1169
    :pswitch_b
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mEnableNetType:Z

    if-eqz v3, :cond_0

    .line 1170
    :cond_2
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lmiui/app/ToggleManager;->startLongClickAction(I)Z

    .line 1171
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1176
    :pswitch_c
    invoke-direct {p0}, Lmiui/app/ToggleManager;->togglePrivacyMode()Z

    move-result v3

    or-int/2addr v2, v3

    .line 1177
    goto/16 :goto_0

    .line 1179
    :pswitch_d
    invoke-direct {p0, v5}, Lmiui/app/ToggleManager;->shutdown(Z)V

    goto/16 :goto_0

    .line 1182
    :pswitch_e
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleAccelerometer()V

    goto/16 :goto_0

    .line 1185
    :pswitch_f
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleScreenButtonState()V

    goto/16 :goto_0

    .line 1188
    :pswitch_10
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleScreenshot()V

    .line 1189
    const/4 v2, 0x1

    .line 1190
    goto/16 :goto_0

    .line 1192
    :pswitch_11
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lmiui/app/ToggleManager;->shutdown(Z)V

    goto/16 :goto_0

    .line 1195
    :pswitch_12
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleSync()V

    goto/16 :goto_0

    .line 1198
    :pswitch_13
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleTorch()V

    goto/16 :goto_0

    .line 1201
    :pswitch_14
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleVibrate()V

    goto/16 :goto_0

    .line 1204
    :pswitch_15
    iget-object v3, p0, Lmiui/app/ToggleManager;->mWifiState:Lmiui/app/ToggleManager$WifiStateTracker;

    invoke-virtual {v3}, Lmiui/app/ToggleManager$WifiStateTracker;->toggleState()V

    goto/16 :goto_0

    .line 1207
    :pswitch_16
    invoke-direct {p0}, Lmiui/app/ToggleManager;->togglePowerMode()V

    goto/16 :goto_0

    .line 1210
    :pswitch_17
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleDriveMode()V

    goto/16 :goto_0

    .line 1213
    :pswitch_18
    sget-object v3, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v3}, Lmiui/app/WifiApEnabler;->toggleWifiAp()V

    goto/16 :goto_0

    .line 1216
    :pswitch_19
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleQuietMode()V

    goto/16 :goto_0

    .line 1219
    :pswitch_1a
    invoke-direct {p0}, Lmiui/app/ToggleManager;->togglePaperMode()V

    goto/16 :goto_0

    .line 1111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_e
        :pswitch_4
        :pswitch_a
        :pswitch_14
        :pswitch_8
        :pswitch_12
        :pswitch_7
        :pswitch_9
        :pswitch_13
        :pswitch_d
        :pswitch_11
        :pswitch_c
        :pswitch_15
        :pswitch_0
        :pswitch_b
        :pswitch_10
        :pswitch_1
        :pswitch_f
        :pswitch_17
        :pswitch_2
        :pswitch_16
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method public removeToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .locals 3
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleChangedListener;

    .prologue
    .line 757
    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 758
    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 759
    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 760
    :cond_0
    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 757
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 763
    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    :cond_2
    return-void
.end method

.method public removeToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .prologue
    .line 766
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 767
    return-void
.end method

.method public setOnToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .locals 2
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleChangedListener;

    .prologue
    .line 749
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    return-void
.end method

.method public setOnToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .prologue
    .line 753
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    return-void
.end method

.method public setUserSelectedToggleOrder(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 588
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x51

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 590
    .local v1, "toggleList":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 591
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 594
    :cond_0
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/app/ToggleManager;->getToggleOrderSettingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 598
    return-void
.end method

.method public startLongClickAction(I)Z
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 852
    const/16 v7, 0x12

    if-ne v7, p1, :cond_1

    .line 853
    invoke-direct {p0}, Lmiui/app/ToggleManager;->longClickScreenshot()Z

    move-result v5

    .line 885
    :cond_0
    :goto_0
    return v5

    .line 856
    :cond_1
    if-ne v6, p1, :cond_2

    iget-boolean v7, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    if-nez v7, :cond_0

    .line 860
    :cond_2
    sget-object v7, Lmiui/app/ToggleManager;->sLongClickActions:[I

    aget v4, v7, p1

    .line 861
    .local v4, "resId":I
    if-eqz v4, :cond_0

    .line 865
    iget-object v7, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 866
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 870
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 871
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 875
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 876
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 878
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 881
    :try_start_0
    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v5, v6

    .line 885
    goto :goto_0

    .line 882
    :catch_0
    move-exception v2

    .line 883
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "ToggleManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start activity exception, component = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method updateBluetoothToggle()V
    .locals 4

    .prologue
    const v3, 0x9020003

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1352
    invoke-direct {p0}, Lmiui/app/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    .line 1356
    :cond_0
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnabling:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1358
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v0, :cond_3

    .line 1359
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mBluetoothEnabling:Z

    .line 1360
    invoke-direct {p0, v2, v3}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1369
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 1356
    goto :goto_0

    .line 1362
    :cond_3
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnabling:Z

    if-eqz v0, :cond_4

    .line 1363
    const/16 v0, 0x7d

    invoke-virtual {p0, v2, v3, v0}, Lmiui/app/ToggleManager;->updateToggleImage(III)V

    goto :goto_1

    .line 1366
    :cond_4
    const v0, 0x9020002

    invoke-direct {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    goto :goto_1
.end method

.method public updateRingerToggle()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 1576
    invoke-direct {p0}, Lmiui/app/ToggleManager;->supportZenMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1577
    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "zen_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1578
    .local v0, "mode":I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mSilentEnabled:Z

    .line 1582
    .end local v0    # "mode":I
    :goto_0
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mSilentEnabled:Z

    invoke-virtual {p0, v4, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1583
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mSilentEnabled:Z

    if-eqz v1, :cond_3

    const v1, 0x9020015

    :goto_1
    invoke-direct {p0, v4, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1586
    return-void

    .line 1580
    :cond_2
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mSilentEnabled:Z

    goto :goto_0

    .line 1583
    :cond_3
    const v1, 0x9020014

    goto :goto_1
.end method

.method protected updateToggleImage(III)V
    .locals 4
    .param p1, "toggleId"    # I
    .param p2, "resId"    # I
    .param p3, "alpha"    # I

    .prologue
    .line 1093
    sget-object v3, Lmiui/app/ToggleManager;->sToggleImages:[I

    aput p2, v3, p1

    .line 1094
    sget-object v3, Lmiui/app/ToggleManager;->sToggleAlpha:[I

    aput p3, v3, p1

    .line 1096
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1097
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1098
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1099
    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/ToggleManager$OnToggleChangedListener;

    .line 1100
    .local v2, "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    if-nez v2, :cond_0

    .line 1101
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1097
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1103
    :cond_0
    invoke-interface {v2, p1}, Lmiui/app/ToggleManager$OnToggleChangedListener;->OnToggleChanged(I)V

    goto :goto_1

    .line 1107
    .end local v0    # "i":I
    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    .end local v2    # "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    :cond_1
    return-void
.end method

.method protected updateToggleStatus(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "isOpen"    # Z

    .prologue
    .line 815
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aput-boolean p2, v0, p1

    .line 816
    return-void
.end method

.method protected updateToggleStatusName(ILjava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "statusName"    # Ljava/lang/Object;

    .prologue
    .line 819
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    return-void
.end method

.method public updateVibrateToggle()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 1607
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1608
    .local v0, "isVibrateEnabled":Z
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1609
    if-eqz v0, :cond_0

    const v1, 0x9020036

    :goto_0
    invoke-direct {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1612
    return-void

    .line 1609
    :cond_0
    const v1, 0x9020035

    goto :goto_0
.end method

.method updateWifiToggle()V
    .locals 8

    .prologue
    const/16 v2, 0xff

    const/16 v3, 0x7d

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v7, 0xf

    .line 1310
    iget-object v1, p0, Lmiui/app/ToggleManager;->mWifiState:Lmiui/app/ToggleManager$WifiStateTracker;

    iget-object v1, v1, Lmiui/app/ToggleManager$WifiStateTracker;->zSsid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x9040014

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v7, v1}, Lmiui/app/ToggleManager;->updateToggleStatusName(ILjava/lang/Object;)V

    .line 1315
    sget-object v1, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v6, 0x2

    if-eq v1, v6, :cond_0

    sget-object v1, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_2

    :cond_0
    move v0, v5

    .line 1318
    .local v0, "wifiEnabled":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 1319
    invoke-virtual {p0, v7, v5}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1320
    const v4, 0x902003a

    iget-object v1, p0, Lmiui/app/ToggleManager;->mWifiState:Lmiui/app/ToggleManager$WifiStateTracker;

    iget-boolean v1, v1, Lmiui/app/ToggleManager$WifiStateTracker;->zConnected:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {p0, v7, v4, v1}, Lmiui/app/ToggleManager;->updateToggleImage(III)V

    .line 1330
    :goto_3
    return-void

    .line 1310
    .end local v0    # "wifiEnabled":Z
    :cond_1
    iget-object v1, p0, Lmiui/app/ToggleManager;->mWifiState:Lmiui/app/ToggleManager$WifiStateTracker;

    iget-object v1, v1, Lmiui/app/ToggleManager$WifiStateTracker;->zSsid:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v0, v4

    .line 1315
    goto :goto_1

    .restart local v0    # "wifiEnabled":Z
    :cond_3
    move v1, v3

    .line 1320
    goto :goto_2

    .line 1325
    :cond_4
    invoke-virtual {p0, v7, v4}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1326
    const v1, 0x9020039

    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    if-nez v4, :cond_5

    :goto_4
    invoke-virtual {p0, v7, v1, v3}, Lmiui/app/ToggleManager;->updateToggleImage(III)V

    goto :goto_3

    :cond_5
    move v3, v2

    goto :goto_4
.end method
